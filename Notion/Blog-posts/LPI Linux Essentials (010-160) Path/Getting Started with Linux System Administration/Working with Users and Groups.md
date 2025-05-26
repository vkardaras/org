## Understanding Linux Users

### Admin Powers: Best Practices

- Avoid using the root account
- Create unique accounts for each user
- Assign only necessary authority to each user
- Use admin power only view sudo

View encryption passwords of users

```Shell
$ sudo less /etc/shadow
```

Get users and groups

```Shell
$ less /etc/passwd
```

Get groups info

```Shell
$ less /etc/group
```

Get the privileges associated with a specific user

```Shell
$ id username
```

Get the user that is currently is logged-in

```Shell
$ who
```

Get the currently logged-in user and his current activity

```Shell
$ w
```

Get all the system log-ins since the beginning of the month

```Shell
$ last
```

## Administrating Users and Groups

Create a new user

```Shell
$ sudo useradd -m jane
```

The skeleton directory for new users is in `/etc/skel`

Set a temporary password for the new user

```Shell
$ sudo passwd jane
```

Assign authority over user resources to a group and then add the necessary users as members of the group

Create a new direcotry

```Shell
$ sudo mkdir /var/secret
```

Create a new group

```Shell
$ sudo groupadd secret-group
```

Change the ownership properties of the directory

```Shell
$ sudo chown :secret-group /var/secret/
```

Add a user to an existing group

```Shell
$ sudo usermod -a -G secret-group jane
```

Edit the permissions of the directory to allow the users to edit files

```Shell
sudo chmod g+w /var/secret
```