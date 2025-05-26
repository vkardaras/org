---
id: shell if-then-else
aliases:
  - shell if-then-else
tags: []
---

# shell if-then-else

## Conditional Expressions

```bash
# Test for return value of command
if touch /tmp/x; then ...

# Perform test on strings, files, numbers
if [[ $str ]]; then
  ...
fi
```

Examples

```bash
[[ $str ]] # String not empty

[[ $str="something" ]] # Wrong: always true!

[[ Sstr = "something" ]] # String equals "something"

[[ -e $filename ]] # File exists
[[ -d $dirname ]] # directory exists

# Don't forget spaces around [[, ]], -e
```

## And, Or, Not

```bash
[[ ! -e $file ]] # File does NOT exist
[[ ! $1 ]] # Argument empty
# Use spaces around !

[[ -d $dir && $1 = "foo" ]] # && means "and"
[[ $a || $b ]] # || means "or"
```

Update the script to check for the parameters

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

if [[ ! $input_file ]]; then
    echo "Error: Input file not configured"
    exit 1
fi

if [[ ! -e $input_file ]]; then
    echo "Error: Input file $input_file does not exist"
    exit 1
fi

if [[ ! $1 ]]; then
    echo "Error: missing parameter: container name"
    exit 1
fi

container="$1"

if [[ $2 ]]; then
    directory="$2"
else
    directory="$HOME/reports"
fi

mkdir -p -- "$directory"
if grep -- "$container" "$input_file" > "$directory/${container}_report.csv"
then
    echo "Wrote report $directory/${container}_report.csv"
else
    echo "Container $container not found in $input_file"
fi
```

Run the script with one parameter

```bash
$ create_report.sh X1
create_report.sh X1
```

Set the variable `input_file` to nothing

```bash
export input_file=""
```

Run the script again

```bash
$ create_report.sh X1 
Error: Input file not configured
```
