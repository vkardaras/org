---
id: telescope custom search
aliases:
  - telescope custom search
tags: []
---

# telescope custom search

## Search in specific directory from anywhere

```lua
vim.keymap.set("n", "<leader>en", function()
    require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
    }
end)
```

## Search in lazy plugins directory

```lua
vim.keymap.set("n", "<leader>ep", function()
    require('telescope.builtin').find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
    }
end)
```
