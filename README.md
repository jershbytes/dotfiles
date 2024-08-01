<p align="center">
  <img src=".resources/images/dotfiles.png" alt="Header" width="100" height="100"><br>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT">
  </a>
</p>
<p align="center">
  > Managed with <a href="https://chezmoi.io">chezmoi 🤖</a>
</p>


This repo contains the configuration to set up my machines. This is using **Chezmoi**, the dotfile manager to set up the installation.

This automated setup is currently only configured for Linux machines.

## How to run

```shell
export GITHUB_USERNAME=ColoredBytes
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply --ssh git@github.com:$GITHUB_USERNAME
```
