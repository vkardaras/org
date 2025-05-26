---
id: neovim separate config
aliases:
  - neovim separate config
tags: []
---

# neovim separate config

```bash
NVIM_APPNAME=nvimexample nvim
```

## Make a new directory

```bash
mkdir -p .config/nvimexample
```

## Make an init file

```bash
NVIM_APPNAME=nvimexample nvim init.lua
```

## Add some text and exit

```lua
print("advent of neovim")
```

## Reopen the file and see the printed text

```bash
NVIM_APPNAME=nvimexample nvim init.lua
```

## View messages

```bash
:messages
```

## Run the current file

```bash
:source %
```

## Run the selected text

Select the text you want to run and execute the following command

```bash
lua
```

## Example for LazyVim

### clone the repository

```bash
git clone https://github.com/LazyVim/starter ~/.config/LazyVim
```

### update `.zshrc` file

```bash
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"

function nvims() {
    items=("default", "LazyVim")
    config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if [[ -z $config ]]; then
        echo "Nothing selected"
        return 0
    elif [[ $config == "default" ]]; then
        config=""
    fi
    NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"
```

### source shell config file

```bash
source .zshrc
```
