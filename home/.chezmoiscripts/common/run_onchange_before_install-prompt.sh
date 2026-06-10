#!/usr/bin/env bash

set -eo pipefail


# Install starship if not already installed
if ! command -v starship &>/dev/null; then
  echo "Starship not found. Installing..."
  curl -sS https://starship.rs/install.sh | sh -s -- --yes
else
  echo "Starship is already installed: $(starship --version)"
fi

# Install zoxide if not already installed
if ! command -v zoxide &>/dev/null; then
  echo "zoxide not found. Installing..."
  curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
else
  echo "zoxide is already installed: $(zoxide --version)"
fi

if ! command -v yazi &>/dev/null; then
  echo "yazi not found. Installing..."
curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | gpg --dearmor --yes | sudo tee /etc/apt/trusted.gpg.d/debian.griffo.io.gpg > /dev/null
echo "deb https://debian.griffo.io/apt $(lsb_release -sc 2>/dev/null) main" | sudo tee /etc/apt/sources.list.d/debian.griffo.io.list
sudo apt update
sudo apt install yazi
else
  echo "yazi is already installed: $(yazi --version)"
fi

# Ubuntu installs bat and fd under different names — symlink them so everything works
[ -L ~/.local/bin/bat ] || ln -s "$(which batcat)" ~/.local/bin/bat
[ -L ~/.local/bin/fd ] || ln -s "$(which fdfind)" ~/.local/bin/fd

# Create required directories
mkdir -p ~/.local/state/zsh   # history
mkdir -p ~/.cache/zsh         # completion cache

