## Monitoring system resources

Why Monitor?

- Understand capacity usage
- Identify (and terminate) rogue precesses

A lot of system information is kept in `/proc` directory

Move to `/proc` directory

```Shell
$ cd /proc
```

View the capacity and usage of your system memory

```Shell
$ less meminfo
```

View information about CPU

```Shell
$ less cpuinfo
```

To view of how your hardware is actually being utilized by the system right now, use top

```Shell
$ top
```

View available system memory

```Shell
$ free
```

View the results in MB and GB

```Shell
$ free -h
```

To see the state of all these storage devices currently mounted to your system, run `df`

```Shell
$ df
```

View `ext4` formatted partitions

```Shell
$ df -t ext4
```

Get the partition in human-readable numbers

```Shell
$ df -ht ext4
```

### Networking

Install `iftop`

```Shell
$ sudo apt update
$ sudo apt install iftop
```

Check ethernet connection

```Shell
$ sudo iftop -i eth0
```

## Managing System Processes - Part One

View processes running in current shell

```Shell
$ ps
```

Print information on every active process across your entire system

```Shell
$ ps aux
```

Filter processes with grep

```Shell
$ ps aux | grep sshd
```

View logs with journald

```Shell
$ journalctl --since "10 minutes ago"
```

Alternatively, view log messages in `/var/log` directory

```Shell
$ cd /var/log
$ cat syslog
```

## Managing System Processes - Part One

Another tool for keeping track of running processes is `dmesg`

```Shell
$ dmesg
```

Create a new process

```Shell
$ yes > /dev/null &
20167
```

Check that it is running

```Shell
$ ps
PID TTY          TIME CMD
17946 pts/0    00:00:00 zsh
20167 pts/0    00:00:25 yes
20192 pts/0    00:00:00 ps
```

Kill a process by its process id

```Shell
$ kill 20167
[1]  + 20167 terminated  yes > /dev/null
```

Kill all processes with a specific name

```Shell
$ killall yes
```

Check the state of a process

```Shell
$ sudo systemctl status apache2
```

Disable a process to load on boot

```Shell
$ sudo systemctl disable apache2
```

Enable a process to load on boot

```Shell
$ sudo systemctl enable apache2
```

Use `systemctl` to start or stop a process

```Shell
$ sudo systemctl start apache2
```

### Managing processes priorities

Set the priority of a new process with nice

```Shell
$ nice -19 yes > /dev/null &
```

Check the priority with `top`

```Shell
$ top
```

Reset the priority of a process with `renice` using its process id

```Shell
$ renice 15 -p 20167
```