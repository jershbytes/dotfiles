#!/bin/bash

install_on_dnf() {
    sudo dnf install -y ansible
    if [ $? -ne 0 ]; then
        echo "Failed to install Ansible on Fedora"
        exit 1
    fi
}

install_on_deb() {
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
            install_on_dnf
        elif [ -f /etc/lsb-release ]; then
            install_on_deb
        elif [ -f /etc/rocky-release ]; then
            install_on_dnf
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

# Install Apps via OS detection.
OS="$(uname -s)"
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            ansible-playbook ~/.bootstrap/linux-setup.yml --ask-become-pass
        elif [ -f /etc/rocky-release ]; then
            ansible-playbook ~/.bootstrap/linux-setup.yml --ask-become-pass
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    Darwin*)
        ansible-playbook ~/.bootstrap/mac-setup.yml
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

echo "Ansible installation complete."

