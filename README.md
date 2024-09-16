<p align="center">
  <img src=".resources/images/dotfiles.png" alt="Header" width="100" height="100"><br>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a><br> 
    <i> Managed with <a href="https://chezmoi.io">chezmoi 🤖 </a></i>
 
</p>


This repo contains the configuration to set up my machines. This is using **Chezmoi**, the dotfile manager to set up the installation.

This automated setup is currently only configured for **Fedora** and **MacOS**.

## 🏃How to run

```shell
export GITHUB_USERNAME=coloredbytes
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```

> [!NOTE]
> Since macOS does not have git or curl installed on a fresh install. I have made a bootstrap script for it.
> ```zsh
> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/coloredbytes/dotfiles/main/dot_bootstrap/mac_bootstrap.sh)"
> ```


