#!/usr/bin/env zsh

# Navigation
alias cd='z'
alias tree='eza --tree --icons'
alias ls='eza --icons'
alias ll='eza -lh --icons --git'
alias la='eza -lah --icons --git'

# File operations
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias rmd='/bin/rm --recursive --force --verbose'

# Archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Editors
alias vi='nvim'
alias vim='nvim'

# Viewing / output
alias cat='bat'
alias less='less -R'
alias cls='clear'

# System
alias ps='ps auxf'
alias ping='ping -c 10'
alias bye='shutdown -h now'
alias flush-dns='sudo systemd-resolve --flush-caches'

# Tools
alias ff='fastfetch'

# chezmoi
alias cz='chezmoi'
alias cza='chezmoi add'
alias czcd='chezmoi cd'
alias cze='chezmoi edit'
alias czea='chezmoi edit --apply'
alias czra='chezmoi re-add'
alias czu='chezmoi update'

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls