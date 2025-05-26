## Working with files and directories

Create a file using the editor

```Shell
$ nano file1
```

Create a file without using an editor

```Shell
$ touch file2
```

Copy a file to a directory

```Shell
$ cp file1 newdir/
```

Copy multiple file to a directory

```Shell
$ cp file* newdir/
```

Remove all files starting with a string

```Shell
$ rm file*
```

Remove all files starting with a string and have one more character

```Shell
$ rm file?
```

Remove all files in a directory

```Shell
$ rm *
```

Remove an empty directory

```Shell
$ rmdir newdir/
```

## Searching the Linux file system

Find a file using locate

```Shell
$ locate adduser
```

Filter results with grep

```Shell
$ cat /etc/group | grep ubuntu
```

Redirect output to a file

```Shell
$ cat /etc/group | grep ubuntu >> newfile
```

Redirect output to an existing file and override its content

```Shell
$ cat /etc/group | grep ubuntu > newfile
```

Redirect output to an existing file and append to its content

```Shell
$ cat /etc/group | grep ubuntu >> newfile
```

Print only the first 10 lines of a file

```Shell
$ head /etc/group
```

Print only the last 10 lines of a file

```Shell
$ tail /etc/group
```

Use a column delimiter for each row with `-d:`

Use `-f3` to process the contents of the third field

```Shell
$ cut -d: -f3 /etc/group
```

Print the results in ascending order

```Shell
$ cut -d: -f3 /etc/group | sort -n
```

Print the results in descending order

```Shell
$ cut -d: -f3 /etc/group | sort -rn
```

Count the number of lines, words and characters in a file

```Shell
$ wc /etc/group
76   76 1135 /etc/group
```

## Working with archives

Extract files from an archive

```Shell
$ tar xzf latest.tar.gz
```

- `x` is for the file to be extracted
- `z` indicates that it is a compressed file
- `f` specifies that the filename will follow

Compress a directory

```Shell
$ tar czf newarchive.tar.gz wordpress/
```

- `c` stands for create

Create a tar file without compression

```Shell
$ tar cf largerarchive.tar wordpress/
```

Compress a tar file

```Shell
$ gzip largerarchive.tar
```

Extract a zipped file

```Shell
$ unzip akismet.4.1.zip
```

Create a zip file

```Shell
$ zip newname.zip *
```

## Linux kernel modules and peripherals

Troubleshooting peripherals

- Step one. Is the device recognized by the system?
- Step two. Is the appropriate kernel module loaded?

List USB devices

```Shell
$ lsusb
```

List the devices connected in PCI slots

```Shell
$ lspci
```

Get all the connected hardware

```Shell
$ sudo lshw
```

List all the modules that are currently loaded

```Shell
$ lsmod | grep sound
```

Load a module

```Shell
$ modprobe soundcore
```