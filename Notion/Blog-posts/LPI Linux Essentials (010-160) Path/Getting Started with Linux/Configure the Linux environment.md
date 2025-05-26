## Root-level directories

- `/bin` Binary files for single-user mode commands
- `/sbin` Binary files for multi-user commands
- `/boot` Linux images and boot configuration files
- `/dev` Pseudo files representing devices
- `/etc` Configuration files
- `/home` User files
- `/lib` Software library dependencies
- `/root` Root user files
- `/usr` Additional binaries
- `/var` Updating files (logs, app data, cache)

## Pseudo file directories

- `/proc` Files representing running system processes
- `/dev` Pseudo files representing devices
- `/sys` Data on system and kernel resources

## Managing Linux environments

### Manage geographic locations

```Shell
$ locale
```

Locale settings are stored in this directory

```Shell
$ cd /usr/share/i18n/locales/
```

Another place is `localectl status` to edit and view locale settings

List available locales with the following command

```Shell
$ localectl list-locales
```

Change system locale using the following command

```Shell
$ localectl set-locale LANG=en_CA.utf8
```

### Get current directory

```Shell
$ pwd
$ echo $PWD
```

View all shell variables

```Shell
$ env
```

Create my variable

```Shell
$ myval=5
$ echo $myval
5
```

Open a shell within an existing shell

```Shell
$ bash
```

Export a value to all other child shells

```Shell
$ export myval
```

View the history of commands

```Shell
$ history
```

Use the `type` command to tell how a specified word would be interpreted by Bash

```Shell
$ type wget
```

Display current timezone settings using `timedatectl`

List timezones

```Shell
$ timedatectl list-timezones
```

Filter the results of a command using `grep`

```Shell
$ timedatectl list-timezones | grep -i america
```

Change the timezone

```Shell
$ timedatectl set-timezone Europe/Athens
```

## Managing system hardware

Display all the block devices currently mounted on your system along with their size and their mount point.

```Shell
$ df -ht ext4
```

To see all the block devices attached to your physical system, you can run `lsblk`

Limit the output of the command

```Shell
$ lsblk | grep sd
```

Running `dmesg` will display messages relating to the kernel ring buffer, which in practical terms can tell you a lot about how the system understands its physical environment.

Limit the messages to those that are relevant to wireless devices

```Shell
$ dmesg | grep wl
```

Install `lshw`

```Shell
apt install lshw
```

Generate a comprehensive review of your hardware environment

```Shell
$ sudo lshw | less
```

View the repository information the app system will need

```Shell
$ cd /etc/apt
$ less sources.list
```

Third‑party repositories are added to files in the `sources.list.d` directory

View the number of software that is freely available to Linux users

```Shell
$ apt list --all-versions | wc
```

Search for a package

```Shell
$ apt search business card | less
```

Get more information about a package

```Shell
$ apt show glabels
```

Install a package

```Shell
$ sudo apt install glabels
```