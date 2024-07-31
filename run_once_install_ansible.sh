#!/bin/bash

install_on_fedora() {
    sudo dnf install -y ansible
    if [ $? -ne 0 ]; then
        echo "Failed to install Ansible on Fedora"
        exit 1
    fi
}

install_on_ubuntu() {
    sudo apt-get update
    sudo apt-get install -y ansible
    if [ $? -ne 0 ]; then
        echo "Failed to install Ansible on Ubuntu"
        exit 1
    fi
}

install_on_mac() {
    brew install ansible
    if [ $? -ne 0 ]; then
        echo "Failed to install Ansible on macOS"
        exit 1
    fi
}

OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            install_on_fedora
        elif [ -f /etc/lsb-release ]; then
            install_on_ubuntu
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

# Install Ansible Galaxy Plugin
ansible-galaxy collection install community.general
if [ $? -ne 0 ]; then
    echo "Failed to install Ansible Galaxy collection"
    exit 1
fi

echo "Ansible installation complete."
