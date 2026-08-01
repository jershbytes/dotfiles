<h3 align="center"> My personal dotfiles for <a href="https://cachyos.org" target="_blank">CachyOS</a> and <a href="https://www.apple.com/macos" target="_blank">MacOS</a> <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="16" height="16"> </h3>

<p align="center"><a href="https://www.chezmoi.io/"><img src="https://img.shields.io/badge/managed%20with-chezmoi-00A0FF.svg" alt="chezmoi"></a></p>


# Install

## CachyOS

```bash
sudo pacman -Syu --noconfirm yay zsh chezmoi
```

## MacOS
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install chezmoi git
```


## Apply Dotfiles

```console
$ chezmoi init jershbytes
```

> [!NOTE]
Personal secrets are stored in [ProtonPass](https://proton.me/pass) and you'll
need the [ProtonPass CLI](https://protonpass.github.io/pass-cli/) installed.