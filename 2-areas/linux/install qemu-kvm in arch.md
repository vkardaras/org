---
id: install qemu-kvm in arch
aliases:
  - install qemu-kvm in arch
tags: []
---

# install qemu-kvm in arch

```bash
# synchronize repositories
sudo pacman -Syy
sudo pacman -S archlinux-keyring

# install virt-manager
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables libguestfs --needed
sudo pacman -S libvirt dnsmasq qemu-desktop virt-manager

# modify permissions for libvirt and kvm
sudo usermod -aG libvirt $(whoami) && sudo usermod -aG kvm $(whoami)
sudo usermod -aG libvirt $(whoami)

# start KVM libvirt service
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

# start the default network
sudo virsh net-start default

# force autostart in every host system boot
sudo virsh net-autostart default
```
