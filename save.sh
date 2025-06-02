#!/bin/bash
echo "============ Git info ============"
# Check if git is available and show version
if ! command -v git &> /dev/null; then
    echo "Error: git is not installed or not available in PATH"
    exit 1
fi

git --version

echo "======== Preparing commit ========"

# Add all changes
git add .

# Get number of files altered
FILES_ALTERED=$(git diff --cached --name-only | wc -l)

# Check if there are any changes to commit
if [ "$FILES_ALTERED" -eq 0 ]; then
    echo "No changes to commit."
    echo "============== DONE =============="
    exit 0
fi

# Generate timestamp
TIMESTAMP=$(date '+%Y-%m-%d %H-%M-%S')

# Create commit message
COMMIT_MSG="[$TIMESTAMP] ${USER:-$(whoami)}: $FILES_ALTERED"

# Commit with the message
git commit -m "$COMMIT_MSG"

# Show commit information
echo "============ Git logs ============"
git log -1 --oneline
echo "================================"

# Ask for confirmation to push
read -p "Push to origin main? (yes / no): " response

case "$response" in
    [yY]|[yY][eE][sS])
        echo "Pushing to origin main..."
        git push origin main
        ;;
    [nN]|[nN][oO])
        echo "Aborting push and removing commit from history..."
        git reset --soft HEAD~1
        ;;
    *)
        echo "Invalid response. Aborting push and removing commit from history..."
        git reset --soft HEAD~1
        ;;
esac

echo "============== DONE =============="
exit 0
