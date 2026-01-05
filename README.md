<div align="center">
  <img src="assets/dotfiles.png" alt="Header" width="100" height="100"><br> 
    <i>My personal dotfiles for Arch and MacOS 🚀 </i>
 </div>
 <br>
 <br>


JershBytes's dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

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
