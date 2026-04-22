#!/usr/bin/env bash

set -euo pipefail

GITHUB_USERNAME=JershBytes

sh -c "$(curl -fsLS https://get.chezmoi.io/lb)" -- init --apply git@github.com:$GITHUB_USERNAME/work-dotfiles.git
