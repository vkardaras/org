---
id: Working with shell syntax
aliases: []
tags: []
---

# Working with shell syntax

## Check your operating system

```bash
$ hostnamectl
 Static hostname: vasilis-pc
       Icon name: computer-desktop
         Chassis: desktop 🖥️
      Machine ID: 4d2710cb5d2c4362ba887d596b9f62ab
         Boot ID: f562b4809a6a4b7998600506be108f1a
Operating System: Debian GNU/Linux 12 (bookworm)  
          Kernel: Linux 6.1.0-18-amd64
    Architecture: x86-64
 Hardware Vendor: ASUSTeK COMPUTER INC.
  Hardware Model: PRIME B450M-A
Firmware Version: 2006
```

## Check the shell you are running. In the following case it is `zsh`

```bash
$ ps
    PID TTY          TIME CMD
  28627 pts/0    00:00:00 zsh
  29082 pts/0    00:00:00 ps
```

## Clear the screen

`ctrl+l`

## Search for a package to install

```bash
$ sudo apt search ^zsh$
Sorting... Done
Full Text Search... Done
zsh/stable,now 5.9-4+b2 amd64 [installed]
  shell with lots of features
```

## Get info details about a package

```bash
sudo apt show zsh
```

