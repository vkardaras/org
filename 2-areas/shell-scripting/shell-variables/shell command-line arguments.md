---
id: shell command-line arguments
aliases:
  - shell command-line arguments
tags: []
---

# shell command-line arguments

## Read the output directory from a command-line argument

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

container=$1
directory=$2

mkdir -p $directory
grep $container shipments.csv > $directory/$container.csv

echo Wrote report $directory/$container.csv
```

Execute the script

```bash
./create_reportk.sh X1 work
```

Use quotes with variables to handle spaces for values

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

container="$1"
directory="$2"

mkdir -p "$directory"
grep "$container" shipments.csv > "$directory/$container.csv"

echo "Wrote report $directory/$container.csv"
