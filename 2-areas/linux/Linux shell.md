---
id: Linux shell
aliases:
  - Linux shell
tags:
  - shell
---

# Linux shell

## General

Check the current shell

```bash
echo $SHELL
```

Change your current shell

```bash
chsh

# change default shell to zsh
chsh -s $(which zsh)
```

Make an alias for a command

```bash
alias dt=date
```

View command history

```bash
history
```

Get a list of all environment variables

```bash
env ter we
```

Set an environment variable

```bash
ecport OFFICE=calestop
```

To make a variable persistent add it to your `~/.profile` or equivalent file

Check the location of a command

```bash
which obs-studio
```

Add a program to the path variable

```bash
export PATH=$PATH:/opt/obs/bin
```

Install ohMyZsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[[zsh]]
