---
id: install programs from script
aliases:
  - install programs from script
tags:
  - linux
---

# install programs from script

Create the file `install.sh`

```bash
#!/bin/bash

pkgs=(networkmanager curl wget git tmux ttf-jetbrains-mono-nerd zsh wezterm starship thefuck eza fzf bat neovim neofetch starship ripgrep jdk21-openjdk nodejs npm maven jq kitty imagemagick zip unzip xclip lazygit ghostty jdk21-openjdk nodejs npm zoxide lazygit fuse2)
sudo pacman -S --noconfirm "${pkgs[@]}"

# enable and start the NetworkManager service
systemctl enable --now NetworkManager.service

# change default shell
chsh -s $(which zsh)

# isntall zsh plugins
# install fast-syntax-highlighting
git clone https://github.com/z-shell/F-Sy-H ~/.config/zsh/plugins/f-sy-h

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions

# install history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.config/zsh/plugins/zsh-history-substring-search

# install zsh-vi-mode
git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.config/zsh/plugins/.zsh-vi-mode

# add package manager for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Run script

```bash
sh ./install.sh
```
