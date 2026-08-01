#!/usr/bin/env bash

set -euo pipefail

# exit immediately if pass-cli is already in $PATH
command -v pass-cli >/dev/null 2>&1 && exit 0

case "$(uname -s)" in
Darwin|Linux)
    curl -fsSL https://proton.me/download/pass-cli/install.sh | bash
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac

read -r -p "Email: " email
read -r -s -p "Password: " PROTON_PASS_PASSWORD
echo

if [[ -z "$email" || -z "$PROTON_PASS_PASSWORD" ]]; then
    echo "email and password are required"
    exit 1
fi

export PROTON_PASS_PASSWORD

pass-cli login --interactive "$email"