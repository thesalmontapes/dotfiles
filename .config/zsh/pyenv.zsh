if which pyenv > /dev/null; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

pyenv install --skip-existing 2.7.18
pyenv install --skip-existing 3.10.0
pyenv global 3.10.0
