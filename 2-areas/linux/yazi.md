---
id: yazi
aliases:
  - yazi
tags: []
---

# yazi

## Instalation

```bash
# arch
sudo pacman -S yazi

# macOS
brew install yazi --HEAD

# windows
scoop install yazi
winget install sxyazi.yazi
```

## Yazi core features

```bash
# run yazi
yazi

# view help menu
~ or F1

# open a hew tab
t

# switch tabs
number keys or []

# select file
space

# enter visual mode
v

# copy file
y

# paste file
p

# rename file
r

# delete file
d

# delete file permanently
D

# create a new file or directory
a
```

## Yazi advanced features

```bash
# filter files by name
f

# search files by name
search

# search file contents with ripgrep
S

# scroll throw file contents
shift+j shift+k

# check progress with the task manager
w

# run shell commands
: or ;
```

## Yazi plugins

```bash
# clone the repo for the tokyonight theme
git clone https://github.com/BennyOe/tokyo-night.yazi.git ~/.config/yazi/flavors/tokyo-night.yazi

# edit the file '.config/yazi/theme.toml'
nvim ~/.config/yazi/theme.toml

# add the following to the file
[flavor]
dark = "tokionight-night"
light = "tokionight-night"

```
