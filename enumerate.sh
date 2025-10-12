#!/bin/bash
#
# File Enumerator
# Usage: ./enumerate.sh [tag|tagged] [PATTERN]

set -eo pipefail

VAULT_DIR="./tech.lib"
PROPERTY="$1"
PATTERN="$2"

COLOR_RED="\033[91m"
COLOR_RST="\033[0m"
ERROR_STR="${COLOR_RED}ERROR${COLOR_RST}"

if [[ ! -d "$VAULT_DIR" ]]; then
    echo -e "${ERROR_STR}: Directory $VAULT_DIR not found" >&2
    exit 1
fi

if [[ ! "$PROPERTY" =~ ^(tag|tagged)$ ]]; then
    echo -e "${ERROR_STR}: Unsuported property. Available options [tag|tagged]" >&2
    exit 1
fi

# Convert property name to YAML field name
case "$PROPERTY" in
    tag|tagged) YAML_FIELD="tags" ;;
esac

# Extract YAML frontmatter and parse properties
extract_yaml_property() {
    local file="$1"
    local field="$2"
    
    awk -v field="$field" '
    BEGIN { in_yaml=0; in_list=0 }
    
    /^---$/ {
        if (NR==1) { in_yaml=1; next }
        else if (in_yaml) { exit }
    }
    
    in_yaml {
        # Match field with value on same line (category case)
        if ($0 ~ "^" field ": ") {
            line = $0
            sub("^" field ": *", "", line)
            sub(/^["'\'']/, "", line)
            sub(/["'\'']$/, "", line)
            sub(/ *$/, "", line)
            if (line != "" && line != "[]") print line
            next
        }
        
        # Match field with list on same line (inline array)
        if ($0 ~ "^" field ": *\\[") {
            line = $0
            sub("^" field ": *\\[", "", line)
            sub("\\].*$", "", line)
            gsub(/["'\'']/, "", line)
            n = split(line, items, / *, */)
            for (i=1; i<=n; i++) {
                gsub(/^ *| *$/, "", items[i])
                if (items[i] != "") print items[i]
            }
            next
        }
        
        # Match field with list on next lines
        if ($0 ~ "^" field ": *$") {
            in_list=1
            next
        }
        
        # Process list items
        if (in_list) {
            if ($0 ~ /^[a-zA-Z_].*:/) {
                in_list=0
            } else if ($0 ~ /^[ \t]*- /) {
                line = $0
                sub(/^[ \t]*- */, "", line)
                sub(/^["'\'']/, "", line)
                sub(/["'\'']$/, "", line)
                sub(/ *$/, "", line)
                if (line != "") print line
            } else if ($0 ~ /^[ \t]*$/) {
                next
            } else {
                in_list=0
            }
        }
    }' "$file"
}

# Find matching files
declare -A matching_files
declare -A all_values
declare -A tag_to_files

while IFS= read -r -d '' file; do
    values=$(extract_yaml_property "$file" "$YAML_FIELD")
    
    if [[ -z "$values" ]]; then
        continue
    fi
    
    match_found=0
    while IFS= read -r value; do
        [[ -z "$value" ]] && continue
        
        if [[ "$value" =~ $PATTERN ]]; then
            match_found=1
            
            if [[ "$PROPERTY" == "tag" || "$PROPERTY" == "tagged" ]]; then
                all_values["$value"]=1
            fi
        fi
    done <<< "$values"
    
    if [[ $match_found -eq 1 ]]; then
        basename="${file%.md}"
        basename="${basename#$VAULT_DIR/}"
        matching_files["$basename"]=1
        
        # Store file associations for tagged view
        if [[ "$PROPERTY" == "tagged" ]]; then
            while IFS= read -r value; do
                [[ -z "$value" ]] && continue
                if [[ "$value" =~ $PATTERN ]]; then
                    if [[ -z "${tag_to_files[$value]}" ]]; then
                        tag_to_files["$value"]="$basename"
                    else
                        tag_to_files["$value"]+=$'\n'"$basename"
                    fi
                fi
            done <<< "$values"
        fi
        
        if [[ "$PROPERTY" != "tag" && "$PROPERTY" != "tagged" ]]; then
            while IFS= read -r value; do
                [[ -z "$value" ]] && continue
                if [[ "$value" =~ $PATTERN ]]; then
                    all_values["$value"]=1
                fi
            done <<< "$values"
        fi
    fi
done < <(find "$VAULT_DIR" -type f -name "*.md" -print0)

# Display results based on property type
if [[ ${#matching_files[@]} -eq 0 ]]; then
    echo "No files found matching pattern: $PATTERN" >&2
    exit 0
fi

case "$PROPERTY" in
	tag)
		# Build and display tag hierarchy
		declare -A tag_tree
		
		for tag in "${!all_values[@]}"; do
			tag_tree["$tag"]=1
		done
		
		# Sort tags and build tree structure
		mapfile -t sorted_tags < <(printf '%s\n' "${!tag_tree[@]}" | sort)
		
		# Group tags by common prefixes to build tree
		declare -A displayed_paths
		
		for tag in "${sorted_tags[@]}"; do
			IFS='/' read -ra parts <<< "$tag"
			
			# Display each level of the path
			for ((i=0; i<${#parts[@]}; i++)); do
				# Build the path up to current level
				current_path=""
				for ((j=0; j<=i; j++)); do
					if [[ $j -gt 0 ]]; then
						current_path+="/"
					fi
					current_path+="${parts[j]}"
				done
				
				# Skip if already displayed
				if [[ -n "${displayed_paths[$current_path]:-}" ]]; then
					continue
				fi
				displayed_paths[$current_path]=1
				
				# Build prefix for tree structure
				prefix=""
				if [[ $i -gt 0 ]]; then
					for ((k=0; k<i-1; k++)); do
						prefix+="│   "
					done
					
					# Check if this is the last item at this level
					is_last=1
					for other_tag in "${sorted_tags[@]}"; do
						if [[ "$other_tag" > "$tag" && "$other_tag" =~ ^${current_path%/*}/ ]]; then
							other_parts=()
							IFS='/' read -ra other_parts <<< "$other_tag"
							if [[ ${#other_parts[@]} -gt $i && "${other_parts[i-1]}" == "${parts[i-1]}" ]]; then
								is_last=0
								break
							fi
						fi
					done
					
					if [[ $is_last -eq 1 ]]; then
						prefix+="└── "
					else
						prefix+="├── "
					fi
				fi
				
				# Add trailing slash for non-leaf nodes
				suffix=""
				for check_tag in "${sorted_tags[@]}"; do
					if [[ "$check_tag" =~ ^${current_path}/.+ ]]; then
						suffix="/"
						break
					fi
				done
				
				echo "${prefix}${parts[i]}${suffix}"
			done
		done
		;;
	tagged)
		# Build and display tag hierarchy with files
		declare -A tag_tree
		
		for tag in "${!all_values[@]}"; do
			tag_tree["$tag"]=1
		done
		
		# Sort tags and build tree structure
		mapfile -t sorted_tags < <(printf '%s\n' "${!tag_tree[@]}" | sort)
		
		# Group tags by common prefixes to build tree
		declare -A displayed_paths
		
		for tag in "${sorted_tags[@]}"; do
			IFS='/' read -ra parts <<< "$tag"
			
			# Display each level of the path
			for ((i=0; i<${#parts[@]}; i++)); do
				# Build the path up to current level
				current_path=""
				for ((j=0; j<=i; j++)); do
					if [[ $j -gt 0 ]]; then
						current_path+="/"
					fi
					current_path+="${parts[j]}"
				done
				
				# Skip if already displayed
				if [[ -n "${displayed_paths[$current_path]:-}" ]]; then
					continue
				fi
				displayed_paths[$current_path]=1
				
				# Build prefix for tree structure
				prefix=""
				if [[ $i -gt 0 ]]; then
					for ((k=0; k<i-1; k++)); do
						prefix+="│   "
					done
					
					# Check if this is the last item at this level
					is_last=1
					for other_tag in "${sorted_tags[@]}"; do
						if [[ "$other_tag" > "$tag" && "$other_tag" =~ ^${current_path%/*}/ ]]; then
							other_parts=()
							IFS='/' read -ra other_parts <<< "$other_tag"
							if [[ ${#other_parts[@]} -gt $i && "${other_parts[i-1]}" == "${parts[i-1]}" ]]; then
								is_last=0
								break
							fi
						fi
					done
					
					if [[ $is_last -eq 1 ]]; then
						prefix+="└── "
					else
						prefix+="├── "
					fi
				fi
				
				# Add trailing slash for non-leaf nodes
				suffix=""
				has_children=0
				for check_tag in "${sorted_tags[@]}"; do
					if [[ "$check_tag" =~ ^${current_path}/.+ ]]; then
						suffix="/"
						has_children=1
						break
					fi
				done
				
				# For leaf nodes (actual tags), add file list
				file_list=""
				if [[ $has_children -eq 0 && -n "${tag_to_files[$current_path]}" ]]; then
					mapfile -t sorted_files < <(printf '%s\n' "${tag_to_files[$current_path]}" | sort)
					
					file_list=": "
					first=1
					for file in "${sorted_files[@]}"; do
						if [[ $first -eq 1 ]]; then
							first=0
						else
							file_list+=", "
						fi
						# Extract just the filename (last part after /)
						filename="${file##*/}"
						file_list+="$filename"
					done
				fi
				
				echo "${prefix}${parts[i]}${suffix}${file_list}"
			done
		done
		;;
esac