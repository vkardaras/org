---
id: linux networking
aliases:
  - linux networking
tags: []
---

# linux networking

## Show used ports with processes

```bash
sudo lsof -i -P -n | grep LISTEN
```
