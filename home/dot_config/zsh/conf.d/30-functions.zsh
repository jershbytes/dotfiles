#!/usr/bin/env zsh

# Extracts any archive(s) (if unp isn't installed)
extract() {
	for archive in "$@"; do
		if [ -f "$archive" ]; then
			case $archive in
			*.tar.bz2) tar xvjf $archive ;;
			*.tar.gz) tar xvzf $archive ;;
			*.bz2) bunzip2 $archive ;;
			*.rar) rar x $archive ;;
			*.gz) gunzip $archive ;;
			*.tar) tar xvf $archive ;;
			*.tbz2) tar xvjf $archive ;;
			*.tgz) tar xvzf $archive ;;
			*.zip) unzip $archive ;;
			*.Z) uncompress $archive ;;
			*.7z) 7z x $archive ;;
			*) echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# Copy file with a progress bar
cpp() {
    set -e
    strace -q -ewrite cp -- "${1}" "${2}" 2>&1 |
    awk '{
        count += $NF
        if (count % 10 == 0) {
            percent = count / total_size * 100
            printf "%3d%% [", percent
            for (i=0;i<=percent;i++)
                printf "="
            printf ">"
            for (i=percent;i<100;i++)
                printf " "
            printf "]\r"
        }
    }
    END { print "" }' total_size="$(stat -c '%s' "${1}")" count=0
}

# IP address lookup
function whatsmyip () {
    # Internal IP Lookup.
    if command -v ip &> /dev/null; then
        echo -n "Internal IP: "
        ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1
    else
        echo -n "Internal IP: "
        ifconfig wlan0 | grep "inet " | awk '{print $2}'
    fi

    # External IP Lookup
    echo -n "External IP: "
    curl ip.wtf
}
alias whatismyip="whatsmyip"

ipinfo() {
DASH="$(for i in {1..29}; do echo -n "-"; done)"
for x in "$@"; do echo; echo -e "GEO-IP INFO: ($x)\n"$DASH"";
  curl -s ipinfo.io/$x | sed 's/,\"/\n\"/g' | awk -F\" '/[a-z]/ {printf "%8s : %s\n",$2,$4}';
done; echo
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}

zhealth() {
  local stray=(~/.zshrc(N) ~/.zprofile(N) ~/.zlogin(N) ~/.zshrc.*(N))
  if (( ${#stray} )); then
    print -u2 "zhealth: unexpected zsh files in \$HOME:"
    printf '  %s\n' "${stray[@]}" >&2
    return 1
  fi
  print "zhealth: \$HOME is clean — only ~/.zshenv expected"
}

show-repo() {
    local url
    url=$(git remote get-url origin 2>/dev/null) || { echo "Not a git repo"; return 1; }

    # Normalize common remote formats to an HTTPS URL:
    # - https://host/org/repo(.git)
    # - ssh://git@host/org/repo(.git)
    # - git@host:org/repo(.git)
    local normalized="$url"
    normalized="${normalized%.git}"

    if [[ "$normalized" == http://* || "$normalized" == https://* ]]; then
        url="$normalized"
    elif [[ "$normalized" == ssh://* ]]; then
        normalized="${normalized#ssh://}"
        normalized="${normalized#*@}"
        url="https://$normalized"
    elif [[ "$normalized" == *@*:* ]]; then
        normalized="${normalized#*@}"
        normalized="${normalized/:/\/}"
        url="https://$normalized"
    else
        url="$normalized"
    fi

    # Azure DevOps SSH uses ssh.dev.azure.com:v3/org/project/repo
    # and should map to https://dev.azure.com/org/project/_git/repo
    if [[ "$url" == *"ssh.dev.azure.com"* || "$url" == *"dev.azure.com"* || "$url" == *"visualstudio.com"* ]]; then
        local path
        path="${url#*://}"
        path="${path#*@}"
        path="${path#ssh.dev.azure.com/}"
        path="${path#dev.azure.com/}"
        path="${path#v3/}"
        if [[ "$path" == */*/* ]]; then
            local org project repo
            org="${path%%/*}"
            path="${path#*/}"
            project="${path%%/*}"
            repo="${path#*/}"
            url="https://dev.azure.com/${org}/${project}/_git/${repo}"
        fi
    fi

    # Open in browser (Linux/macOS/WSL)
    if command -v xdg-open &>/dev/null; then
        xdg-open "$url"
    elif command -v open &>/dev/null; then
        open "$url"
    elif command -v wslview &>/dev/null; then
        wslview "$url"
    else
        echo "$url"
    fi
}
alias sr='show-repo'