# Alias's to modified commands
alias cat='bat'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias vi='neovide'
alias vim='neovide'
alias code='codium'
alias home='cd ~'
alias cd="z"
alias ls='eza --icons --color=always'

# Remove a directory and all files
alias rmd='/bin/rm  --recursive --force --verbose '

# Search command line history
alias huh="history | grep "

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# SHA1
alias sha1='openssl sha1'

# General useful alias's
alias bye="shutdown -h now"

# fastfetch Aliases
alias ff='fastfetch'

# chezmoi alias
alias cz='chezmoi'
alias cza='chezmoi add'
alias czcd='chezmoi cd'
alias cze='chezmoi edit'
alias czea='chezmoi edit --apply'
alias czra='chezmoi re-add'
alias czu='chezmoi update'

# Systemd Aliases
alias flush-dns='sudo systemd-resolve --flush-caches'
