---
id: linux processes
aliases:
  - linux processes
tags: []
---

# linux processes

## View running processes

```bash
top
```

### View running processes of a program

```bash
ps aux | grep chrome
```

The aux options are as follows:

- `a` = show processes for all users
- `u` = display the process’s user/owner
- `x` = also show processes not attached to a terminal

## Kill a process

```bash
# kill by process id
kill -9 3827

# kill by process name
killall -9 chrome
```
