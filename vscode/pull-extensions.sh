#!/bin/zsh

# vscode/sync.sh
# Exports currently installed VSCode extensions to extensions.txt
# Run this after installing new extensions in VSCode
#
# Note: settings.json and keybindings.json are symlinked, so changes
# in VSCode UI automatically update the dotfiles repo. No sync needed!

set -e

DOTFILES_VSCODE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Exporting VSCode extensions..."

# Export installed extensions
if command -v code &> /dev/null; then
    code --list-extensions > "$DOTFILES_VSCODE_DIR/extensions.txt"
    echo "✓ Exported $(wc -l < "$DOTFILES_VSCODE_DIR/extensions.txt" | tr -d ' ') extensions to extensions.txt"
else
    echo "⚠ 'code' command not found. Cannot export extensions."
    echo "  Make sure VSCode is installed and 'code' is in your PATH."
    exit 1
fi

echo ""
echo "Done! Don't forget to commit your changes:"
echo "  git add vscode/extensions.txt"
echo "  git commit -m 'vscode: update extensions'"

