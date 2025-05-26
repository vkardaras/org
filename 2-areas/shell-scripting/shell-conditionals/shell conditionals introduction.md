---
id: shell conditionals introduction
aliases:
  - shell conditionals introduction
tags: []
---

# Introduction conditionals

## Create a conditional in command line

```bash
$ if mkdir a; then echo "ok"; else echo "error"; fi
ok

$ if mkdir a; then echo "ok"; else echo "error"; fi
mkdir: cannot create directory ‘a’: File exists
error
```

## Use conditional in a script

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

if [[ ! $1 ]]; then
    echo "Error: missing parameter: container name"
    exit
fi

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" "$input_file" > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"
```

Run the script without arguments

```bash
$ create_report.sh
Error: missing parameter: container name
```

Return the status of a script after exit

- 0 means success
- any other means error. Return 1 in this case if there is an error

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

if [[ ! $1 ]]; then
    echo "Error: missing parameter: container name"
    exit 1
fi

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" "$input_file" > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"
```

Check the script in the command-line without arguments

```bash
$ if create_report.sh; then echo "Success"; else echo "Error"; fi
Error: missing parameter: container name
Error
```

Check the script in the command-line with arguments

```bash
$ if create_report.sh U2 ~/reports; then echo "Success"; else echo "Error"; fi
Wrote report /home/vasilis/reports/U2_report.csv
Success
```

Add the conditional in the script

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

if [[ ! $1 ]]; then
    echo "Error: missing parameter: container name"
    exit 1
fi

container="$1"
directory="$2"

mkdir -p -- "$directory"
if grep -- "$container" "$input_file" > "$directory/${container}_report.csv"
then
    echo "Wrote report $directory/${container}_report.csv"
else
    echo "Container $container not found in $input_file"
fi
```

Call the script without an existing container

```bash
$ create_report.sh XX ~/reports
create_report.sh XX ~/reports
```
