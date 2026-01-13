<h3 align="center">  My personal dotfiles for Arch and MacOS  <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="16" height="16"> </h3>

<p align="center"><a href="https://www.chezmoi.io/"><img src="https://img.shields.io/badge/managed%20with-chezmoi-00A0FF.svg" alt="chezmoi"></a></p>


## Quick Install

```bash
sh -c "$(curl -fsSL https://rossjm.dev/install-dotfiles)"
```

Or download and inspect first:
```bash
curl -fsSL https://rossjm.dev/install-dotfiles -o install.sh
chmod +x install.sh
./install.sh
```


Personal secrets are stored in [Bitwarden](https://bitwarden.com/) and you'll
need the [Bitwarden CLI](https://bitwarden.com/help/cli/) installed.
Login to Bitwarden with:

```console
bw login
export BW_SESSION=$(bw unlock --raw)
```
