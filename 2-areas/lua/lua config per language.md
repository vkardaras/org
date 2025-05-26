---
id: lua config per language
aliases:
  - lua config per language
tags: []
---

# lua config per language

## Create a `lua` file for the file type you want, e.g. `lua`

- Create a file for language options in `ftplugin` directory. For `lua` it is `lua.lua`

```lua
local set = vim.opt_local

set.shiftwidth = 2
set.shiftwidth = 2 -- number of spaces inserted for each indentation level
set.tabstop = 2 -- number of spaces inserted for tab character
set.softtabstop = 2 -- number of spaces inserted for <Tab> key
```
