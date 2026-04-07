# Lazy-load pyenv for faster shell startup
if command -v pyenv > /dev/null; then
  # Add pyenv shims to PATH without full initialization
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  export PATH="$PYENV_ROOT/shims:$PATH"

  # Lazy-load pyenv initialization
  _lazy_load_pyenv() {
    unset -f python python3 pip pip3 pyenv
    eval "$(pyenv init -)"
  }

  # Create stub functions that trigger pyenv loading
  python() {
    _lazy_load_pyenv
    python "$@"
  }

  python3() {
    _lazy_load_pyenv
    python3 "$@"
  }

  pip() {
    _lazy_load_pyenv
    pip "$@"
  }

  pip3() {
    _lazy_load_pyenv
    pip3 "$@"
  }

  pyenv() {
    _lazy_load_pyenv
    pyenv "$@"
  }
fi
