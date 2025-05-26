## Networking configuration

Check the access to a network router

```Shell
$ ip route show
```

Show your IP address

```Shell
$ ip addr
```

Get more detailed data on network configuration

```Shell
$ ss -i
```

## Domain Name System (DNS) configuration

File to manage DNS service

```Shell
$ cat /etc/resolv.conf
```

View how things are currently configured.

```Shell
$ systemd-resolve --status
```

## Remote connections and SSH

Remote is the new local

- Accessing headless servers
- Accessing virtual machines
- Accessing workloads on distant servers

### Installing OpenSSH

- Server `apt install openssh-server`
- Client `apt install openssh-client`

Connect to another computer through SSH

```Shell
$ ssh johndoe@10.0.0.31.131
```

Connect to another computer through SSH using a different than the default port

```Shell
$ ssh -p 2222 johndoe@10.0.0.31.131
```

Copy a local file to a remote machine

```Shell
$ scp update-local.sh johndoe@10.0.0.31.131:/home/johndoe
```