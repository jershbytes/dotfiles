#!/usr/bin/env bash

install_on_linux() {
    sudo dnf check-update
    sudo dnf -y install git
    sudo dnf -y install curl
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_on_mac() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            install_on_linux
        elif [ -f /etc/lsb-release ]; then
            install_on_linux
        elif [ -f /etc/rocky-release ]; then
            install_on_linux
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    Darwin*)
        install_on_mac
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac
