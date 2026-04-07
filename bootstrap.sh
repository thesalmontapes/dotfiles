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
      --exclude "vscode" \
      -avh --no-perms . $HOME

source $HOME/.zshenv
source $HOME/.zshrc

# Python setup
pyenv install --skip-existing 2.7.18
pyenv install --skip-existing 3.10.0
pyenv global 3.10.0

# VSCode configuration
./vscode/install.sh
