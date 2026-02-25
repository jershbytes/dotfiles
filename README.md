<h3 align="center">  My personal dotfiles for Arch and MacOS  <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="16" height="16"> </h3>

<p align="center"><a href="https://www.chezmoi.io/"><img src="https://img.shields.io/badge/managed%20with-chezmoi-00A0FF.svg" alt="chezmoi"></a></p>


## Install

### Set PATH
```bash
export PATH="/home/$USER/.local/bin:$PATH"
```

### Proton Pass Installer
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jershbytes/dotfiles/refs/heads/main/pass.sh)"
```
### Dotfiles Installer

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jershbytes/dotfiles/refs/heads/main/install.sh)"
```

> [!NOTE]
Personal secrets are stored in [ProtonPass](https://proton.me/pass) and you'll
need the [ProtonPass CLI](https://protonpass.github.io/pass-cli/) installed.
