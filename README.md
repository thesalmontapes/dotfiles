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
- Install Homebrew (if not present)
- Install packages from `Brewfile` (via `brew bundle`)
- Symlink dotfiles (`.zshrc`, `.config/`, etc.) to `$HOME`
- Source shell configurations

## Optional Tool Setup

After running `bootstrap.sh`, set up language/tool environments as needed:

### Python

Python versions are managed with pyenv.

**Setup:**
```bash
./python/install.sh
```

This installs the configured Python versions and sets the default.

### VSCode

VSCode configuration is managed through symlinks and an extension manifest.

**Initial setup:**
```bash
./vscode/install.sh
```

This symlinks `settings.json` and `keybindings.json` to VSCode, and installs extensions from `extensions.txt`.

**After making changes:**

- **Settings/keybindings** - Automatically updated via symlink, just commit:
  ```bash
  git add vscode/settings.json
  git commit -m "vscode: update settings"
  ```

- **Extensions** - Export and commit:
  ```bash
  ./vscode/pull-extensions.sh
  git add vscode/extensions.txt
  git commit -m "vscode: update extensions"
  ```
