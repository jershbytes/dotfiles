#!/usr/bin/env bash
# Script to create clickable git remote links using OSC 8 escape codes

# Get the remote URL
GIT_REMOTE=$(git ls-remote --get-url 2>/dev/null)

# Exit if no remote
[[ -z "$GIT_REMOTE" ]] && exit 0

# Determine the git host icon
if [[ "$GIT_REMOTE" =~ "github" ]]; then
    ICON=$'\uf09b'  # GitHub icon
elif [[ "$GIT_REMOTE" =~ "gitlab" ]]; then
    ICON=$'\uf296'  # GitLab icon
elif [[ "$GIT_REMOTE" =~ "codeberg" ]]; then
    ICON=$'\uf330'  # Codeberg icon
elif [[ "$GIT_REMOTE" =~ "bitbucket" ]]; then
    ICON=$'\uf171'  # Bitbucket icon
else
    ICON=$'\uf1d3'  # Generic git icon
fi

# Convert SSH URLs to HTTPS
# Handles: git@github.com:user/repo.git -> https://github.com/user/repo
url=$(echo "$GIT_REMOTE" | sed -E 's|git@([^:]+):(.+)\.git|https://\1/\2|')

# Also handle HTTPS URLs and remove .git suffix
url=$(echo "$url" | sed 's|\.git$||')

# Extract repo name
repo=$(basename "$url")

# Output: icon + two spaces + OSC 8 hyperlink
# OSC 8 format: ESC]8;;URL\ESC\\TEXT\ESC]8;;\ESC\\
printf '%s \e]8;;%s\e\\%s\e]8;;\e\\' "$ICON" "$url" "$repo"
