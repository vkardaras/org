---
id: nvim surround
aliases: []
tags:
  - nvim
---

```bash
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete around me!]         ds]             delete around me!
    remove <b>HTML tags</b>     dst             remove HTML tags
    'change quotes'             cs'"            "change quotes"
    <b>or tag types</b>         csth1<CR>       <h1>or tag types</h1>
    delete(function calls)      dsf             function calls
```
