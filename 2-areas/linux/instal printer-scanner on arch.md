---
id: instal printer-scanner on arch
aliases:
  - instal printer-scanner on arch
tags: []
---

# instal printer-scanner on arch

```bash
# Install cups, sane and hplip
sudo pacman -S cups sane hplip

# Start and enable (make it start after boot) the CUPS printing service
sudo systemctl enable --now cups

# Install a driver plug-in
sudo hp-setup -i
```
