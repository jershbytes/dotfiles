# 💤 LazyConfig

## 🛠️ Installation

<details>
  <summary> Windows </summary>

- Make a backup of your current Neovim files:
```
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

- Clone the Repo
```
git clone https://github.com/ColoredBytes/lazyconfig.git $env:LOCALAPPDATA\nvim
```
- Remove the `.git` folder, so you can add it to your own repo later
```
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```
</details>

<details>
  <summary> Linux/MacOS </summary>

- Make a backup of your current Neovim files:

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
- Clone The Repo
```
git clone https://github.com/ColoredBytes/lazyconfig.git ~/.config/nvim
```
- Remove the `.git` folder, so you can add it to your own repo later
```
rm -rf ~/.config/nvim/.git
```
</details>








## 📝 Notes

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
