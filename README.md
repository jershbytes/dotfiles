<p align="center">
  <i>Joshua Ross's Dotfiles for Linux & MacOS 🚀</i>
</p>

![Screenshot of customized terminal](./.github/images/arch.png)

---

## 🗂️ Overview

This repository contains my personal dotfiles and setup scripts for quickly configuring a development environment on Linux (Arch, Ubuntu, CachyOS) and MacOS.  
It uses [**Chezmoi**](https://www.chezmoi.io/) for management, ensuring reproducibility and easy syncing of settings across machines.

### What’s Included?

- **Shell:** Zsh configuration, custom aliases, and functions
- **Editors:** Neovim configuration (and alias to neovide GUI)
- **Terminal:** WezTerm configuration (custom themes, fonts, and keybindings)
- **Automation:** One-liner setup scripts for Linux (Arch, Ubuntu) and MacOS
- **Package Management:** Automated install of packages via `pacman`, `paru`, `apt`, and `brew` (where applicable)
- **Productivity/Dev Tools:** 
    - Directory navigation, SSH, fastfetch, mkdocs, tree, and more
    - Dev-focused scripts, such as for Terraform, and quick directory creation
- **Chezmoi Shortcuts:** Quick edit/update/apply commands for dotfile management

---

## 🚀 Quick Start

**1. Install & Apply with Chezmoi**

```shell
# Change to your GitHub username if you forked.
export GITHUB_USERNAME=JershBytes

# Initialize chezmoi and apply dotfiles
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git
```

**2. Enjoy your environment!**
- Aliases and functions for faster shell usage
- Preconfigured Neovim and WezTerm
- Automated package installation (Arch, Ubuntu, MacOS supported)

---

## 🛠️ Customization

- **Add/Edit dotfiles:**  
  Use `dot` (alias for `chezmoi edit`) to make changes.  
- **Update all configs:**  
  Run `dotdrop` (alias for `chezmoi update && chezmoi apply`)

---

## 🗒️ Notable Aliases & Functions

- `ll`, `la`, `ls`, `lt`: Enhanced directory listings
- `vim` → Neovim, `vide` → Neovide GUI
- `tree`, `ff` (fastfetch), `bye` (shutdown), `s` (ssh)
- `mcd <dir>`: Make and enter a directory
- `ipinfo <ip>`: Quick geo-IP info lookup

---

## 📦 Package Installation

Automated scripts for each OS:
- **Arch/CachyOS:** Installs `paru` (AUR helper), then runs `pacman` and `paru` to install packages
- **Ubuntu:** Installs via `apt` and Homebrew (if present)
- **MacOS:** [Describe the Homebrew/MacOS support if present]

_Scripts are located in `home/.chezmoiscripts/linux/` and run automatically by Chezmoi during setup._

---

## 📝 License

MIT — see [LICENSE](/LICENSE) for details.

---

> _Clone, fork, and adapt for your own use! PRs and suggestions welcome._
