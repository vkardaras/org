---
id: neovim quickfix
aliases:
  - neovim quickfix
tags: []
---

# neovim quickfix

## open quickfix

### from telescope

- Search in telescope for a term
- Enter in normal mode
- Press <C-q> to add all entries to quickfix

### from reference

- Move the cursor to the word you want to show references
- Press <leader>gr to open quickfix with the references of the word

## Move in quickfix

- `:cnext`: move to next entry
- `:cprev`: move to previous entry
- `:cclose`: close quickfix
- `:copen`: open quickfix
- `:cdo`: do a command for each line

### Example of `:cdo`

```bash
# substitute `client` with `c`
:cdo s/client/c/gc
```
