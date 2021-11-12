#!/bin/zsh

rsync --exclude ".git" \
      --exclude ".DS_Store" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      --exclude "Brewfile" \
      -avh --no-perms . $HOME 

pyenv install 2.7.18
pyenv install 3.10.0
