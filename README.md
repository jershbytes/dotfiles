<div align="center">
  <img src=".github/images/dotfiles.png" alt="Header" width="100" height="100"><br> 
    <i>My personal dotfiles for Linux and MacOS 🚀 </i>
 </div>
 <br>
 <br>


This repo contains the configurations to set up my machines. This is using [**Chezmoi**](https://www.chezmoi.io/), the dotfile manager to set up the installation.

This automated setup is currently only configured for `Arch and MacOS`.

## 🏃How to run

```bash
export GITHUB_USERNAME=JershBytes
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```
## ⚖️ LICENSE
can be found [here](/LICENSE)

## :camera: Screenshots 

![Screenshot 1](.github/images/arch.png)
