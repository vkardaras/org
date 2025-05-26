---
id: vim registers
aliases:
  - vim registers
tags: []
---

# vim registers

## View help for registers

```bash
:h registers
```

## Using registers

To copy to a register use double quote and a letter from a - z

```bash
# copy to a register 3 lines
"ay2j

# paste the contents of a register
"ap
```

### View the contents of all the registers

```bash
:reg
```
