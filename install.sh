#!/usr/bin/env bash

set -e

function arch_install() {
    sudo pacman -S --noconfirm bitwarden-cli chezmoi yay zsh
}

function darwin_install() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew install bitwarden-cli chezmoi git
}

function bw_lgoin() {
    bw login
    export BW_SESSION=$(bw unlock --raw)
}

function apply_dotfiles() {
    chezmoi init --apply jershbytes
}


case "$(uname -s)" in
    Linux*)
        if command -v pacman &> /dev/null; then
            arch_install
            bw_lgoin
            apply_dotfiles
        else
            echo "Unsupported operating system: $(uname -s)"
            exit 1
        fi
        ;;
    Darwin*)
        darwin_install
        bw_lgoin
        apply_dotfiles
        ;;
    *)
        echo "Unsupported operating system: $(uname -s)"
        exit 1
        ;;
esac
