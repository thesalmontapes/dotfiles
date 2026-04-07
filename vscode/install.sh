#!/bin/zsh

# vscode/install.sh
# Applies VSCode configuration from dotfiles to the system
# - Symlinks settings.json and keybindings.json
# - Installs extensions from extensions.txt

set -e

VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
DOTFILES_VSCODE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Setting up VSCode configuration..."

# Create VSCode User directory if it doesn't exist
mkdir -p "$VSCODE_USER_DIR"

# Symlink settings.json
if [ -f "$DOTFILES_VSCODE_DIR/settings.json" ]; then
    ln -sf "$DOTFILES_VSCODE_DIR/settings.json" "$VSCODE_USER_DIR/settings.json"
    echo "✓ Symlinked settings.json"
fi

# Symlink keybindings.json
if [ -f "$DOTFILES_VSCODE_DIR/keybindings.json" ]; then
    ln -sf "$DOTFILES_VSCODE_DIR/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
    echo "✓ Symlinked keybindings.json"
fi

# Install extensions
if [ -f "$DOTFILES_VSCODE_DIR/extensions.txt" ] && command -v code &> /dev/null; then
    echo "Installing VSCode extensions..."
    cat "$DOTFILES_VSCODE_DIR/extensions.txt" | xargs -L 1 code --install-extension
    echo "✓ Extensions installed"
elif ! command -v code &> /dev/null; then
    echo "⚠ 'code' command not found. Install VSCode and add 'code' to PATH to install extensions."
fi

echo "Done! VSCode configuration applied."

