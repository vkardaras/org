---
id: zsh plugins
aliases:
  - zsh plugins
tags:
  - zsh plugins
---

# zsh plugins

```bash
# export 'XDG_CONFIG_HOME' in .zshrc
export XDG_CONFIG_HOME="$HOME/.config/"
```

## zsh-syntax-highlighting

```bash
# install fast-syntax-highlighting
git clone https://github.com/z-shell/F-Sy-H ~/.config/zsh/plugins/f-sy-h
# add the following in .zshrc
source "${XDG_CONFIG_HOME}/zsh/plugins/f-sy-h/F-Sy-H.plugin.zsh"

github.com/zsh-users/zsh-syntax-highlighting
```

## zsh-autosuggestions

```bash
# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
# add the following in .zshrc
source "${XDG_CONFIG_HOME}/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
```

## zsh-history-substring-search

```bash
# install history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.config/zsh/plugins/zsh-history-substring-search
# add the following in .zshrc
source "${XDG_CONFIG_HOME}/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"
```

## zsh-vi-mode

```bash
# install zsh-vi-mode
git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.config/zsh/plugins/.zsh-vi-mode
# add the following in .zshrc
source "${XDG_CONFIG_HOME}/zsh/plugins/.zsh-vi-mode/zsh-vi-mode.plugin.zsh"
```
