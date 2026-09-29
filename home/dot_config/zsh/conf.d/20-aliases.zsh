#!/usr/bin/env zsh

# Navigation
alias cd='z'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias tree='eza --tree --icons=always --color=always --'
alias ls='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first'
alias ll='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -l --git -h'
alias la='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a'
alias lla='eza --color=always --color-scale=all --color-scale-mode=gradient --icons=always --group-directories-first -a -l --git -h'


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
alias fastfetch="pokego -s -n psyduck --no-title | fastfetch --file-raw -"

# chezmoi
alias cz='chezmoi'
alias cza='chezmoi add'
alias czap='chezmoi apply'
alias czcd='chezmoi cd'
alias cze='chezmoi edit'
alias czea='chezmoi edit --apply'
alias czra='chezmoi re-add'
alias czu='chezmoi update'

# Hugo
alias hs='hugo server'    # Basic dev server with no drafts
alias hsd='hugo server -D' # Basic dev server with drafts enabled
alias hsdf='hugo server -D -F' # Dev server with drafts + future-dated posts
alias hsdall='hugo server -D -F -E' # Complete dev server: drafts + future + expired posts
alias hsdnc='hugo server -D --disableFastRender --ignoreCache' # No-cache server with drafts (disables Hugo's fast render memory cache & disk cache)
alias hsdclean='rm -rf public/ && hugo server -D --disableFastRender --ignoreCache' # Clean render: deletes /public folder first, then runs no-cache server with drafts

## get top process eating memory
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias mem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'

## list largest directories (aka "ducks")
alias dir5='du -cksh * | sort -hr | head -n 5'
alias dir10='du -cksh * | sort -hr | head -n 10'

# Safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls
