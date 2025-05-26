---
id: AppImage
aliases:
  - AppImage
tags: []
---

# AppImage

- Download the AppImage (example.AppImage)
- Make it executabla

```bash
chmod u+x example.AppImage
```

- Run it from the command

```bash
./example.AppImage
```

- Extract the AppImage

```bash
./example.AppImage --appimage-extract
```

This will create a new folder called squashfs-root

- Move the folder to `/ops` directory

```bash
sudo mv squashfs-root /opt/example
```

- Create a Desktop Application Entry

If the `example.desktop` does not exist in the folder create it

````bash
cd ~ && touch example.desktop
```bash
[Desktop Entry]
Name=Example
Type=Application
Categories=Graphics;
MimeType=image/svg+xml;
Exec=/opt/example/AppRun %F
Icon=/opt/example/example.svg
Terminal=false
StartupNotify=true
````

- Install and add to application favourites
  This is better than simply copying the pasting the file to the /usr/share/applications directory as the file will be validated in the process and the application cache will be refreshed.

```bash
sudo desktop-file-install example.desktop
```

[[AppImage Obsidian]]
