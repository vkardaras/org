---
id: neovim terminal
aliases:
  - neovim terminal
tags: []
---

# neovim terminal

## Terminal commands

```bash
# show help
:help :term

# open terminal
:term

# go to insert mode
i

# go to normal mode
<C-\><C-n>
```

## Specify terminal options with autocommand

```lua
vim.api.nvim_create_autocmd("TermOpen", {
	desc = "Specify options for terminal",
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})
```

## keymaps for terminal

### Open terminal

```lua
vim.keymap.set("n", "<leader>st", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 15)
end)
```

### Send command to terminal

```lua
local job_id = 0
vim.keymap.set("n", "<leader>st", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 15)

    job_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>example", function()
    vim.fn.chansend(job_id, { "ls -al\r\n" })
end)
```
