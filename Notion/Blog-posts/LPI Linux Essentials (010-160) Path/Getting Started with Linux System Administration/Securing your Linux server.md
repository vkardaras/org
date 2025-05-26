## Applying Object permissions

Connect with a different user

```Shell
$ su jane
```

Create a file

```Shell
$ touch data.txt
```

Jane cannot add contents to another directory

```Shell
$ touch /var/log/stuff
touch: cannot touch '/var/log/stuff': Permission denied
```

List the files in a directory with its attributes

```Shell
$ ls -l
```

List the attributes of the current directory

```Shell
$ ls -dl
```

Permissions: Numeric Notation

|   |   |   |
|---|---|---|
|Read|r|4|
|Write|w|2|
|Execute|x|1|

## Extending object usability

Make members of groups delete only their own files and not other users

Check the directory permissions

```Shell
$ ls -dl
drwxrwxr-x 2 root secret-group 4096 Φεβ  13 00:17
```

Change the permissions by adding a sticky bit

```Shell
$ sudo chmod +t .
```

Check the permissions again

```Shell
$ ls -dl
drwxrwxr-t 2 root secret-group 4096 Φεβ  13 00:17 .
```

### Symbolic links

Create a script

```Shell
$ nano /home/johndoe/scripts/myscript.sh
```

Create a symbolic link to the file

```Shell
$ sudo ln -s /home/johndoe/scripts/myscript.sh /var/secret
```

## Hardening your server

### Software updates

```Shell
# apt update
# apt upgrade

# dnv update
```

### Service access controls

- Service hardening
- Port control
- Firewall rules

Figure out what software is actually running so you can shut it down

```Shell
$ nmap -v -sT localhost
```

## Data encryption