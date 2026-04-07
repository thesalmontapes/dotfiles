#!/bin/zsh

# python/install.sh
# Installs Python versions using pyenv
# Run this to set up Python on a new machine

set -e

echo "Setting up Python..."

# Check if pyenv is available
if ! command -v pyenv >/dev/null 2>&1; then
    echo "⚠ pyenv not found. Install it first:"
    echo "  brew install pyenv"
    exit 1
fi

# Install Python versions (skip if already installed)
echo "Installing Python 2.7.18..."
pyenv versions 2>/dev/null | grep -q "2.7.18" || pyenv install 2.7.18

echo "Installing Python 3.10.0..."
pyenv versions 2>/dev/null | grep -q "3.10.0" || pyenv install 3.10.0

# Set global Python version
echo "Setting Python 3.10.0 as global version..."
pyenv global 3.10.0

echo "✓ Python setup complete!"
echo "  Python 2.7.18: $(pyenv prefix 2.7.18 2>/dev/null || echo 'installed')"
echo "  Python 3.10.0: $(pyenv prefix 3.10.0 2>/dev/null || echo 'installed')"
echo "  Global version: $(pyenv version)"
