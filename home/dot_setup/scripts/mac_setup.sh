#!/bin/bash

install_homebrew_on_macOS() {
    # Check if Homebrew is already installed
    if command -v brew &> /dev/null; then
        echo "Homebrew is already installed."
        return
    fi

    # Install Xcode Command Line Tools
    xcode-select --install

    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# Install Homebrew
install_homebrew_on_macOS

# Add Homebrew to PATH
if ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' "$HOME/.zprofile"; then
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> "$HOME/.zprofile"
fi

# Apply the new PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
