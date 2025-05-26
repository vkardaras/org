---
id: arch pacman
aliases:
  - arch pacman
tags: []
---

# arch pacman

```bash
# install a package
sudo pacman -S package-name

# remove a package without removing its dependencies
sudo pacman -R package-name

# remove a package together with its dependencies
sudo pacman -Rs package-name

# update all packages in the system
sudo pacman -Syu

# remove all downloaded package files from the cache
sudo pacman -Scc
```
