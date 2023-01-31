#!/bin/zsh

if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --no-lock

rsync --exclude ".git" \
      --exclude ".DS_Store" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      --exclude "Brewfile" \
      -avh --no-perms . $HOME 

source $HOME/.zshenv
source $HOME/.zshrc

.config/alacritty/update-alacritty-icon.sh
