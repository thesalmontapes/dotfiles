# dotfiles

## Setup

Clone this repository.

```
git clone https://github.com/thesalmontapes/dotfiles.git && cd dotfiles
```

Install Homebrew.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install the [Brewfile](Brewfile) dependencies.

```
brew bundle
```

If Alacritty does not open, try:

```
brew install --cask --no-quarantine alacritty
```
