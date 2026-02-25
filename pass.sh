#!/usr/bin/env bash

set -e

### Variables ###
read -rp "Enter Proton Username..." USERNAME
read -rp "Enter Proton Password..." PASSWORD
read -rp "Enter the TOTP..." TOTP

# Grab proton-pass-cli installer
curl -fsSL https://proton.me/download/pass-cli/install.sh | bash

# Set variables and login
export PROTON_PASS_PASSWORD=${PASSWORD}
export PROTON_PASS_USERNAME=${USERNAME}
export PROTON_PASS_TOTP=${TOTP}

# Login to proton-pass-cli
pass-cli login --interactive $PROTON_PASS_USERNAME