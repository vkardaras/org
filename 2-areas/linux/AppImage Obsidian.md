---
id: AppImage Obsidian
aliases:
  - AppImage Obsidian
tags: []
---

# AppImage Obsidian

## Download the AppImage (example.AppImage)
## Make it executabla

```bash
chmod u+x Obsidian-1.7.5.AppImage
```

## Extract the AppImage
```bash
./Obsidian-1.7.5.AppImage --appimage-extract
```
This will create a new folder called squashfs-root

## Move the folder to `/opt` directory
```bash
sudo mv squashfs-root /opt/obsidian
```

## Install the desktop application
```bash
sudo desktop-file-install obsidian.desktop
```
