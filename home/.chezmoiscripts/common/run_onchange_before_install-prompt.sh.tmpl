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

# Ubuntu installs bat and fd under different names — symlink them so everything works
[ -L ~/.local/bin/bat ] || ln -s "$(which batcat)" ~/.local/bin/bat
[ -L ~/.local/bin/fd ] || ln -s "$(which fdfind)" ~/.local/bin/fd

# Create required directories
mkdir -p ~/.local/state/zsh   # history
mkdir -p ~/.cache/zsh         # completion cache

