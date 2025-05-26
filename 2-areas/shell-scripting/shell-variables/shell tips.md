---
id: shell tips
aliases:
  - shell tips
tags: []
---

# shell tips

## End of options

Use `--` to declare the end of the options of a command

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" shipments.csv > "$directory/$container.csv"

echo "Wrote report $directory/$container.csv"
```

## Use `printf` instead of `echo`

```bash
$ echo -- $USER
-- johndoe

$ printf "%s\n" $USER
johndoe

$ printf "I am %s and my shell is %s\n" $USER $SHELL
I am johndoe and my shell is /bin/bash
```

## Braces

Use braces to separate a variable in a string

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" shipments.csv > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"
```
