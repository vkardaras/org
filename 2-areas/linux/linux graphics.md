---
id: linux graphics
aliases:
  - linux graphics
tags: []
---

# linux graphics

## Check display manager

```bash
echo $XDG_SESSION_TYPE
```

## Disable wayland

```bash
# move to this file
sudo nvim /etc/gdm3/daemon.conf

# uncomment the following line
#WaylandEnabled=false
```
