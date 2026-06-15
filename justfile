#!/usr/bin/env -S just --justfile

export PATH :="/home/$USER/.local/bin:$PATH"

export GITHUB_USERNAME := "JershBytes"

# List recipes
default:
  @just --list

# Run everything together on arch
setup_arch: install apply arch-dependencies

# Run everything together on mac
setup_mac: install apply 

# Install chezmoi
install:
  sh -c "$(curl -fsLs https://get.chezmoi.io/lb)"

# Apply dotfiles
apply:
  chezmoi init --apply {{GITHUB_USERNAME}}
  
# Install arch-dependencies
arch-dependencies:
  sudo pacman -S --noconfirm yay zsh
