---
id: shell debugging
aliases:
  - shell debugging
tags: []
---

# shell debugging

## Debugging with `-x`

Print each line of the script by adding `-v` after the declaration of the shell

```bash
#!/bin/bash -v
```

Print the result of each line of the script by adding `-x` after the declaration of the shell`.`

```bash
#!/bin/bash -x
```

## Check a shell script

Install shellcheck

```bash
sudo apt install shellcheck
```

Check a script with shellcheck

```bash
shellcheck create_report.sh
```
