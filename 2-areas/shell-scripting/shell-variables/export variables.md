---
id: export variables
aliases:
  - export variables
tags: []
---

# export variables

Use a shell variable in the script `$input_file`

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" "$input_file" > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"
```

Create a variable

```bash
inpt_file=shipments.csv
```

Export the variable to make it available to child processes

```bash
export input_file
```

## Save the variable to one of init files like `.bashrc` or `.zshrc`

```bash
nano .bashrc
```

```bash
export PATH="$HOME/bin/:$PATH"
export input_file="$HOME/shipments.csv"
```

Examine path

```bash
echo $PATH
```

View the value of the variable

```bash
echo $input_file
```

Move the script into the `~/bin` directory to make it available from everywhere

```bash
mv create_report.sh ~/bin/
```

## Review export

Variables are local to your script

- Or terminal session

Export a variabe

- To make it available to subprocesses
- export var
- export var=”value”
