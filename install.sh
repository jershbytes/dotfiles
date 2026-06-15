#!/usr/bin/env bash

set -e

export GITHUB_USERNAME=JershBytes

function arch_install() {
	sudo pacman -S --noconfirm yay zsh chezmoi
}

function darwin_install() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	brew install chezmoi git
}

function apply_dotfiles() {
	chezmoi init --apply $GITHUB_USERNAME
}

case "$(uname -s)" in
Linux*)
	if command -v pacman &>/dev/null; then
		arch_install
		apply_dotfiles
	else
		echo "Unsupported Linux distribution. This script only supports Arch Linux."
		exit 1
	fi
	;;
Darwin*)
	darwin_install
	apply_dotfiles
	;;
*)
	echo "Unsupported operating system: $(uname -s)"
	exit 1
	;;
esac
