---
id: shell variables from file
aliases:
  - shell variables from file
tags: []
---

# shell variables from file
```bash
#!/bin/bash
set -a
. ./env.txt
set +a
```
