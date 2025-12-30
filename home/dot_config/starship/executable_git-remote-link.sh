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
elif [[ "$GIT_REMOTE" =~ "dev.azure.com" ]] || [[ "$GIT_REMOTE" =~ "visualstudio.com" ]]; then
    ICON=$'\uebd8'  # Azure DevOps icon
else
    ICON=$'\uf1d3'  # Generic git icon
fi

# Convert SSH URLs to HTTPS
# Handle Azure DevOps SSH: git@ssh.dev.azure. com:v3/org/project/repo -> https://dev.azure.com/org/project/_git/repo
if [[ "$GIT_REMOTE" =~ git@ssh\.dev\.azure\.com:v3/([^/]+)/([^/]+)/(.+) ]]; then
    url="https://dev.azure.com/${BASH_REMATCH[1]}/${BASH_REMATCH[2]}/_git/${BASH_REMATCH[3]}"
else
    # Standard SSH: git@github.com:user/repo.git -> https://github.com/user/repo
    url=$(echo "$GIT_REMOTE" | sed -E 's|git@([^: ]+):(.+)\.git|https://\1/\2|')
fi

# Also handle HTTPS URLs and remove .git suffix
url=$(echo "$url" | sed 's|\.git$||')

# Extract repo name
repo=$(basename "$url")

# Output: icon + two spaces + OSC 8 hyperlink
# OSC 8 format: ESC]8;;URL\ESC\\TEXT\ESC]8;;\ESC\\
printf '%s  \e]8;;%s\e\\%s\e]8;;\e\\' "$ICON" "$url" "$repo"
