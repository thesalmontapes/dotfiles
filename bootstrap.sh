#!/bin/zsh

if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle

rsync --exclude ".git" \
      --exclude ".DS_Store" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      --exclude "Brewfile" \
      --exclude "python" \
      --exclude "vscode" \
      -avh --no-perms . $HOME

source $HOME/.zshenv
source $HOME/.zshrc

echo ""
echo "=== Bootstrap complete! ==="
echo ""
echo "Optional tool setup (run as needed):"
echo "  ./python/install.sh  # Set up Python"
echo "  ./vscode/install.sh  # Set up VSCode settings and extensions"
echo ""
