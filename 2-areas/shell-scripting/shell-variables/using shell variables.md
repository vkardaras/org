---
id: using shell variables
aliases: []
tags: []
---

# Using shell variables

Create a script with a variable and a parameter

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

directory=reports

mkdir -p $directory
grep $1 shipments.csv > $directory/$1.csv

echo Wrote report $directory/$1.csv
```

Execute the script by passing the parameter.

```bash
/create_report.sh B5
```

## Naming variables

- Use letters, numbers, underscore
- First character: a letter or underscore
- Case-sensitive

Uppercase variables

- pre-defined varables
- PATH, HOME, SECONDS, IF, etc.
- Don’t override them by mistake

Good habit

- Use lowercase names
