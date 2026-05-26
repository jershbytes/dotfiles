#!/usr/bin/env bash

set -e

GITHUB_USERNAME=JershBytes

sh -c "$(curl -fsLS https://get.chezmoi.io/lb)" -- init --apply $GITHUB_USERNAME
