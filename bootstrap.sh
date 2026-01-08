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

function bw_login() {
    if !  bw login; then
        echo "Failed to login to Bitwarden"
        exit 1
    fi
    
    # Unlock and save session to file
    bw unlock --raw > ~/.bw_session
    
    # Export for current script
    export BW_SESSION=$(cat ~/.bw_session)
    
    # Verify session works
    if ! bw sync; then
        echo "Failed to sync Bitwarden.  Session may be invalid."
        exit 1
    fi
    
    echo "Bitwarden session established successfully"
}

function apply_dotfiles() {
    chezmoi init jershbytes
    chezmoi apply
}


case "$(uname -s)" in
    Linux*)
        if command -v pacman &> /dev/null; then
            arch_install
            bw_login
            apply_dotfiles
        else
            echo "Unsupported Linux distribution. This script only supports Arch Linux."
            exit 1
        fi
        ;;
    Darwin*)
        darwin_install
        bw_login
        apply_dotfiles
        ;;
    *)
        echo "Unsupported operating system: $(uname -s)"
        exit 1
        ;;
esac

echo "⚠️ DON'T FORGET TO REMOVE bw_session FILE ⚠️"
