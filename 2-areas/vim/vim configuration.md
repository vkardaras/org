---
id: vim configuration
aliases: []
tags: []
---

# vim configuration

## Important configuration files

- `~/.vimrc` Most settings go here. Sheared terminal and graphical options
- `~/.gvimrc` Graphic-only settings (font, window size)
- `~/.vim/` Plugins, language-specific options, color schemes.

### Set, Show, Reset

Boolean options

```bash
# turn a boolean value on
:set list

# turn a boolean value off
:set nolist

# show current value
:set list?

# reset to default value
:set list&
```

Numeric options

```bash
# set a value
:set softtabstop=2

# show a value
:set softtabstop
:set softtabstop?

# reset to default value
:set softtabstop&
```

Run `:h softtabstop` for help

Find where an options has been set

```bash
:verbose set wildmode?
```

Find what options are available

```bash
:options
```

