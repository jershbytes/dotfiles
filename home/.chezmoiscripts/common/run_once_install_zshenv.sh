#!/usr/bin/env bash
set -euo pipefail

sudo mkdir -p /etc/zsh

sudo tee /etc/zsh/zshenv >/dev/null <<'EOF'
if [[ -z "$XDG_CONFIG_HOME" ]]
then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi
EOF