---
id: virt-manager settings
aliases:
  - virt-manager settings
tags:
  - virt-manager
---

# virt-manager settings

## New VM

- Check `Customize configuration before install`

### Settings

- Display Spice -> Listen type: None
- Display Spice -> OpenGL: [x]
- Video QXL -> Model: Virtio
- Video QXL -> 3D acceleration: [x]

### Additional settings for Arch

- Run `sudo pacman -S spice-vdagent` on vm

### Additional settings for windows 11

- Overview -> Firmware: UEFI x86_64:/usr/share/edk2/ovmf/OVMF_CODE.secboot.fd
- TPM vNone -> Advanced options -> Version: 2.0 (Add TPM vNone from "Add Hardware")
