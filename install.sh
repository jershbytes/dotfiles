#!/usr/bin/env bash

set -e

function arch_install() {
    sudo pacman -Syu --noconfirm yay zsh chezmoi  
}

function darwin_install() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew install pass-cli chezmoi git
}

function pp_config() {
    curl -fsSL https://proton.me/download/pass-cli/install.sh | bash
    echo "Please complete ProtonPass authentication..."
    if ! pass-cli login; then
        echo "ProtonPass login failed. Exiting."
        exit 1
    fi
    echo "ProtonPass ready for use with chezmoi"
}

function apply_dotfiles() {
    chezmoi init jershbytes
    chezmoi apply
}


case "$(uname -s)" in
    Linux*)
        if command -v pacman &> /dev/null; then
            arch_install
            pp_config
            apply_dotfiles
        else
            echo "Unsupported Linux distribution. This script only supports Arch Linux."
            exit 1
        fi
        ;;
    Darwin*)
        darwin_install
        pp_config
        apply_dotfiles
        ;;
    *)
        echo "Unsupported operating system: $(uname -s)"
        exit 1
        ;;
esac

