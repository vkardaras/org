---
id: vim marks
aliases: []
tags: []
---

# vim marks

```bash
# mark a position in a document, m+letter
ma

# jump to exact line and column, `+letter
# jump to beginning of marked line only, '+letter

```

- Lowercase marks are file-specific
- Uppercase marks are global

```bash
# delete from current position to mark t
d't
```

## vim's marks

```bash
# the location of the cursor when you last exited Vim (`0 is most recent)
`0-`9

# the position of the cursor before the latest jump
'' ``

# location of the last edit
'. `.
```

