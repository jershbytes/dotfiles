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


Personal secrets are stored in [ProtonPass](https://proton.me/pass) and you'll
need the [ProtonPass CLI](https://protonpass.github.io/pass-cli/) installed.
The ProtonPass app and CLI will be installed automatically, then you can apply your dotfiles:

```console
chezmoi init jershbytes
chezmoi apply
```
