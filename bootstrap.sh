#!/bin/zsh

rsync --exclude ".git" \
      --exclude ".DS_Store" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      --exclude "Brewfile" \
      -avh --no-perms . $HOME 

source $HOME/.zshrc
