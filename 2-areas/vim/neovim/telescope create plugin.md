---
id: telescope create plugin
aliases:
  - telescope create plugin
tags: []
---

# telescope create plugin

## Create the folder `config/telescope/` and the file `multigrep.lua` inside it

## Require the file in telescope config

```lua
config = function()
    ...

    require("config.telescope.multigrep").setup()
end,
```

## The `multigrep.lua` file

[[telescope multigrep]]

## Using the custom telescope picker

Display the picker with the shortcut `<leader>mg`

- Search in specific file types: `sometext  *.sql`
- Search in specific folder: `sometext  **/model/**`
