---
package: plocate
category: command
tags:
  - file
  - file/search
  - operation/filtering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] plocate

> [!info] Quickly find files by name

Reads one or more databases prepared by [[updatedb]] and writes file names matching at least one of the patterns to standard output, one per line

## Command
```txt
locate [OPTIONS]... [PATTERN]

-r, --regexp [PATTERN]
	Search for a basic regexp, not allowing the use of patterns
--regex [PATTERN]
	Interpret all patterns as extended regexps

-b, --basename
	Match only the base name instead of the whole path name
-c, --count
	Write the number of matching entries instead of the file names
-l, -n, --limit [0-9]
	Exit successfully after finding the defined limit of entries
-i, --ignore-case
	Ignore case distinctions
-0, --null
	Separate the entries on output using the ASCII NULL

-e, --existing
	Print only entries that refer to files existing at the time locate is run
-L, --follow
	When checking whether files exist, follow trailing symbolic links, therefore, ommiting broken ones
-P, -H, --nofollow
	When checking whether files exist, do not follow trailing symbolic links

-d, --database [PATH]
	Use the indicated database instead of the default one
-S, --statistics
	Write statistics about each read database to standard output instead of searching for files
-q, --quiet
	Write no messages about errors encountered while reading and processing databases

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Exit Status
- 0 - One or more matches
- 1 - No matches or a fatal error

## Links
[linux.die.net](https://linux.die.net/man/1/locate)
