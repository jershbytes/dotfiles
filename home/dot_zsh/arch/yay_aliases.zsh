# Yay Aliases for Arch Linux

# Update system and AUR packages
alias yayupdate='yay -Syu'

# Install a package (from official repos or AUR)
alias yayinstall='yay -S'

# Search for a package in the repositories or AUR
alias yaysearch='yay -Ss'

# Search for installed packages (official and AUR)
alias yaysearchi='yay -Qs'

# Remove a package
alias yayremove='yay -R'

# Remove a package with dependencies
alias yayremovefull='yay -Rns'

# Clean package cache (uninstalled packages)
alias yayclean='yay -Sc'

# Clean all package cache (use cautiously)
alias yaycleanall='yay -Scc'

# List explicitly installed packages
alias yayinstalled='yay -Qe'

# Show orphaned packages
alias yayorphans='yay -Qdtq'

# Remove orphaned packages
alias yayremoveorphans='yay -Rns $(yay -Qdtq)'

# Display disk space used by cached packages
alias yaycacheusage='du -sh ~/.cache/yay'
