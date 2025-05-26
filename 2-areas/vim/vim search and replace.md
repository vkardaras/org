---
id: vim search and replace
aliases: []
tags: []
---

Search and replace in file

```bash
# search
/searchterm

# search and replace
:%s/search/replace/gc

# search and replace in line
:s/search/replace/gc
```

- `%` Search the current buffer
- `g` Search for all occurrences
- `c` Ask for confirmation on each match

Search commands

```bash
# search forward
/
# search backwords
?
# go to next match
n
# go to previous match
N
# search for the word under cursor forward
*
# search for the word under cursor backword
#
# search for next partial match
g*
# search for previous partial match
g#
```

Search character

```bash
# search for character forward
f <char>

# search for character backward
F <char>

# search before character forward
t <char>

# search before character backward
T <char>

# search next
;

# search previews
,
```
