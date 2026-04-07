# dotfiles

## Setup

Clone this repository.

```
git clone https://github.com/thesalmontapes/dotfiles.git && cd dotfiles
```

Run the install script.
```
source bootstrap.sh
```

This will:
- Install Homebrew packages from `Brewfile`
- Symlink shell configurations to `$HOME`
- Run `vscode/install.sh` to set up VSCode

## VSCode

VSCode configuration is managed through symlinks and an extension manifest.

### Files
- `install.sh` - Symlinks settings/keybindings and installs extensions from `extensions.txt`
- `pull-extensions.sh` - Exports currently installed extensions to `extensions.txt`
- `settings.json` - VSCode settings (symlinked to VSCode)
- `keybindings.json` - Custom keybindings (symlinked to VSCode)
- `extensions.txt` - List of extension IDs to install

### Workflow

**After changing settings/keybindings in VSCode UI:**
```bash
# Settings are automatically updated via symlink!
git add vscode/settings.json
git commit -m "vscode: update settings"
```

**After installing a new extension:**
```bash
./vscode/pull-extensions.sh
git add vscode/extensions.txt
git commit -m "vscode: update extensions"
```
