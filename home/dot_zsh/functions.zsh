function mkcd {
    # This function creates a directory (with parent directories as needed) and then changes into it.
    mkdir -pv "$1" && cd "$1" || exit
}

ipinfo() {
DASH="$(for i in {1..29}; do echo -n "-"; done)"
for x in "$@"; do echo; echo -e "GEO-IP INFO: ($x)\n"$DASH"";
  curl -s ipinfo.io/$x | sed 's/,\"/\n\"/g' | awk -F\" '/[a-z]/ {printf "%8s : %s\n",$2,$4}';
done; echo
}
