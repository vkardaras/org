# Introducing While Loops

### Loops

Looping structures allow quick iteration though a list of group of items very efficiently. A very simple loop could create 12 users that need similar properties. The code only needs to be written once, and it runs across each user in the list.

### While / Until

The first loop structure we look at are while and until loops, looping while a condition is true or until the condition becomes true.

### WHILE

The loop block will iterate while the test condition is true

```Shell
$ declare -i x=10

$ while (( x > 0 )) ; do
> echo $x
> x=x-1
> done
```

UNTIL

The loop block will iterate until the test condition becomes true

```Shell
$ declare -i x=10

$ until (( x == 0 )) ; do
> echo $x
> x=x-1
> done
```

# Understanding For Loops

### C-style Loop

The C-style loop takes 3 expressions:

- Initiate the variable
- Test the variable
- Increment or decrement variable

```Shell
$ for ((i=0 ; i<5 ; i++)); do
> echo $i
> done

$ for ((i=5 ; i>0 ; i--)); do echo $i; done
```

### Iterating an Array

To loop through each item in the array, we can use a C-style for loop.

We can declare the elements of the array for the test condition.

```Shell
# declare the array
$ declare -a users=("bob" "joe" "sue")

# print the array
$ declare -p users

# count array elements
$ echo ${\#users[*]}

# loop through the array
$ for ((i=0; i<${\#users[*]}; i++)) do 
> sudo useradd ${users[$i]};
> done
```

### Classic for loop

The list referred to with the in keyword can be static or dynamic as shown here.

```Shell
$ for f in $(ls); do stat -c "%n %F" $f ; done

$ for f in (*); do stat -c "%n %F" $f ; done
```

# Working with For Loops

```Shell
# create a directory to work
$ mkdir play

# move to the directory
# esc + will bring the last argument of the previous command
$ cd play

# create files
$ for ((i=1; i<10; i++)); do 
> touch file$1
> done

# remove the files
$ for ((i=9; i>0; i--)); do rm file$i; done
```

Create some files in the directory

```Shell
$ mkdir dir1
$ touch file1
$ touch file2
$ mkdir dir2

$ ls
dir1  dir2  file1  file2
```

Get information about a file

```Shell
# get full information
$ stat file1
  File: file1
  Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
Device: 259,1	Inode: 23991547    Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/ vasilis)   Gid: ( 1000/ vasilis)
Access: 2024-03-07 00:07:36.974808371 +0200
Modify: 2024-03-07 00:07:36.974808371 +0200
Change: 2024-03-07 00:07:36.974808371 +0200
 Birth: 2024-03-07 00:07:36.974808371 +0200


# get the filetype
$ stat file1 -c %F

# get the name of the file
$ stat file1 -c %n
```

Get filtered information of files with a for-loop

```Shell
$ for file in $(ls); do stat -c "%n %F" $file; done
dir1 directory
dir2 directory
file1 regular empty file
file2 regular empty file
```

# Working with Continue and Break

### Continue / Break

Additional tests may be needed to filter elments.

- `continue` ignore current element and process next
- `break` exit the loop

### List files, not directories

We can test the file type, and if it is a directory ignore the item by using continue.

```Shell
$ for file in $(ls); do 
> if [[ -d $file ]]; then
> continue
> fi
> echo $file
> done
```

```Shell
# print information only for files
$ for file in $(ls); do if [[ -d $file ]]; then continue; fi; stat -c "%n %F" $file; done
file1 regular empty file
file2 regular empty file

# print information only for directories
$ for file in $(ls); do if [[ -f $file ]]; then continue; fi; stat -c "%n %F" $file; done
dir1 directory
dir2 directory
```

# Working with Foreach Loops

### ZSH Foreach

The foreach loop forgoes the in keyword and do starting the block.

The keyword end is used instead of done.

Change to zsh shell

```Shell
$ zsh
```

Use foreach

```Shell
$ foreach f (*)
> echo $f
> end
```

# Building Menus

Create a script `menu.sh`

```Shell
$ vim menu.sh
```

Add the script to the file

```Shell
#!/bin/bash
function create_directory () {
	declare -l directory
	read -p "Enter a directory name: " directory
	mkdir $directory
}

while true ; do
	clear
	echo "Choose 1 2 or 3"
	echo "1: list users"
	echo "2: create directory"
	echo "3: quit"
	read -sn1
	case "$REPLY" in
		1) who;;
		2) create_directory;;
		3) exit 0;;
	esac
	read -n1 -p "Press any key"
done
```

Make the script executable

```Shell
$ chmod u+x menu.sh
```

Run the script

```Shell
$ ./menu.sh
```

## Configure zsh

Check current shell
```bash
echo $SHELL
```

Change to zsh shell
```bash
chsh -s $(which zsh)
```