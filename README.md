<p align="center">
  <img src=".github/images/dotfiles.png" alt="Header" width="100" height="100"><br> 
    <i>My personal dotfiles for Linux 🚀 </i>
 </p>

![terminal picture](./.github/images/arch.png)


This repo contains the configurations to set up my machines. This is using [**Chezmoi**](https://www.chezmoi.io/), the dotfile manager to set up the installation.

## 🏃How to run

```shell
export GITHUB_USERNAME=JershBytes
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:$GITHUB_USERNAME/dot.git
```

## ⚖️ LICENSE
can be found [here](/LICENSE)
