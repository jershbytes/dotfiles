<div align="center">
  <img src=".github/images/dotfiles.png" alt="Header" width="100" height="100"><br> 
    <i>My personal dotfiles for Linux and MacOS 🚀 </i>
 </div>
 <br>
 <br>


This repo contains the configurations to set up my machines. This is using [**Chezmoi**](https://www.chezmoi.io/), the dotfile manager to set up the installation. This automated setup is currently only configured for `Arch and MacOS`.

## Installing bitwarden-cli and chezmoi

```bash
#MacOS
brew install bitwarden-cli chezmoi

#ArchLinux
pacman -S bitwarden-cli chezmoi
```

## Install with:

```bash
# Unlock Bitwarden first
export BW_SESSION=$(bw unlock --raw)

# Then apply dotfiles
chezmoi init --apply jershbytes
```


