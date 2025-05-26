---
id: neovim goodies
aliases:
  - neovim goodies
tags: []
---

# neovim goodies

```lua
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
```

## Autocommands

```lua
-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
```

## Lua help

```bash
:lua = vim
:lua = vim.api
:lua = vim.api.nvim_create_autocmd
:help nvim_create_autocmd()
```

## Lua runtime path

```bash
:echo nvim_list_runtime_paths()
```
