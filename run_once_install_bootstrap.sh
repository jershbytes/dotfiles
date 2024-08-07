#!/bin/bash

# Function to install Ansible on Fedora
install_ansible_on_fedora() {
    sudo dnf install -y ansible
}

# Function to install Ansible on macOS
install_ansible_on_mac() {
    brew install ansible
}

# Function to install Homebrew on Fedroa
install_homebrew_on_fedora() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to install Homebrew on macOS
install_homebrew_on_macOS() {
    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Detect the OS
OS="$(uname -s)"

# Perform installation and setup based on the OS
case "${OS}" in
    Linux*)
        if [ -f /etc/fedora-release ]; then
            sudo dnf check-update

            # Install Homebrew if not present
            if ! command_exists brew; then
                echo "Installing Homebrew..."
                install_homebrew_on_fedora
            else
                echo "Homebrew is already installed"
            fi

            # Install Ansible if not present
            if ! command_exists ansible; then
                echo "Installing Ansible..."
                install_ansible_on_fedora
            else
                echo "Ansible is already installed"
            fi

            ansible-playbook ~/.bootstrap/linux-setup.yml --ask-become-pass
        else
            echo "Unsupported Linux distribution"
            exit 1
        fi
        ;;
    Darwin*)
        # Install Homebrew if not present
        if ! command_exists brew; then
            echo "Installing Homebrew..."
            install_homebrew_on_macOS
        else
            echo "Homebrew is already installed"
        fi

        # Install Ansible if not present
        if ! command_exists ansible; then
            echo "Installing Ansible..."
            install_ansible_on_mac
        else
            echo "Ansible is already installed"
        fi

        ansible-playbook ~/.bootstrap/mac-setup.yml --ask-become-pass
        ;;
    *)
        echo "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

echo "[+] Bootstrap Complete."
