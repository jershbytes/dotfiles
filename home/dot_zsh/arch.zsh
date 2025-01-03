# Pacman Aliases for Arch Linux

# Update system
alias update='sudo pacman -Syu'

# Install a package
alias install='sudo pacman -S'

# Search for a package in the repositories
alias search='pacman -Ss'

# Search for installed packages
alias searchi='pacman -Qs'

# Remove a package
alias remove='sudo pacman -R'

# Remove a package with dependencies
alias removefull='sudo pacman -Rns'

# Clean package cache (remove uninstalled package files)
alias clean='sudo pacman -Sc'

# Clean all package cache (use cautiously)
alias cleanall='sudo pacman -Scc'

# List explicitly installed packages
alias installed='pacman -Qe'

# Show orphaned packages (no longer required by anything)
alias orphans='pacman -Qdtq'

# Remove orphaned packages
alias removeorphans='sudo pacman -Rns $(pacman -Qdtq)'

# Display disk space used by cached packages
alias cacheusage='du -sh /var/cache/pacman/pkg'

