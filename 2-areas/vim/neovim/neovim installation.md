---
id: neovim installation
aliases:
  - neovim installation
tags: []
---

# neovim installation

### Install from appImage

AppImage is a universal package. It works on any Linux distro, whether a new or old system and hardware.

```bash
# download neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

# add execute permission
chmod u+x nvim.appimage

# test if running
./nvim.appimage

# move appimage to /usr/local/bin/nvim folder
sudo mv nvim.appimage /usr/local/bin/nvim
```

### Remove neovim

```bash
sudo rm -R /usr/local/bin/nvim
```
