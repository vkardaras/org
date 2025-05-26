---
id: stow
aliases:
  - stow
tags: []
---

# stow

## Installation

```bash
# debian
sudo apt install stow

# arch
sudo pacman -Ss stow
```

## Initialization

1. Create the folder `~/dotfiles/`
2. Add files to the directory

```bash
# add zshrc
cp ~/.zshrc ~/dotfiles

# add neovim config
cp -r ~/.config/nvim ~/dotfiles/.config
```

3. Run the following command inside the `dotfiles` folder

```bash
stow .
```
If the configuration already exists in the home directory run the following command
```bash
# remove the directory or
# pass the adopt flag to the stow command to move any of the conflicting file to the dotfiles directory
stow --adapt .
```
### Clear all symlinks
```bash
stow -D .
```
