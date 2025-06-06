# Terminal Management Aliases
alias zz="z"                              # Jump to directories using z (tracking frequently used paths)
alias lt='ls --human-readable --size -1 -S --classify'  # List files by size (largest first) with human-readable sizes and file types
alias ll='ls -alF --color=auto'                        # List all files (including hidden) in long format with indicators for file types
alias la='ls -A --color=auto'                          # Show all files except `.` and `..` (almost all)
alias ls='ls -l --color=auto'                          # Display files in detailed list format by default
alias l='ls -CF --color=auto'                          # List files in columns and append file type indicators
alias s="ssh"               # SSH into a remote machine using Kitty terminal features
alias bye='shutdown -h now'               # Shut down the machine (if you know, you know)
alias ff='fastfetch'                      # Run fastfetch (a system information tool)
alias cat='bat --paging=never'

# File Operations Aliases
alias cpv='rsync -ah --info=progress2'    # Copy files using rsync with progress info (human-readable)


# Development Tools Aliases                     # Shortcut for Terraform commands
alias vim="nvim"                       # Open Neovim GUI (Neovide) instead of Vim

# Directory Tree Display Alias
alias tree='tree --dirsfirst -F'          # Display directory tree with directories listed first and trailing slashes

# Chezmoi Aliases
alias dot="chezmoi edit"                       # Alias for Chezmoi edit command
alias dotdrop="chezmoi update && chezmoi apply"

# MkDocs Aliases
alias mks="mkdocs serve"                  # Serve MkDocs documentation locally

# Hugo Aliases
alias hcn="hugo server -N --noHTTPCache"  # Run Hugo server with no HTTP caching
alias hi="hugo new site"                  # Create a new Hugo site
alias gsui='git submodule update --init'  # Update Git submodules
