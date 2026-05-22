#!/usr/bin/env bash

# exit immediately if password-manager-binary is already in $PATH
type pass-cli >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    curl -fsSL https://proton.me/download/pass-cli/install.sh | bash
    ;;
Linux)
    curl -fsSL https://proton.me/download/pass-cli/install.sh | bash
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac
