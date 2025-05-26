# Understanding simple tests

### Simple AND / OR statements

```Shell
$ echo hello || echo bye
hello
```

```Shell
$ echo hello && echo bye
hello
bye
```

  

# Working with simple tests

Run a command and test if it succeded

```Shell
$ cat /etc/hosts
$ echo $?
0
```

If the previous command succeeded, `echo $?` returns 0 otherwise a different integer

```Shell
$ cat /etc/hostss
$ echo $?
1
```

Check if a user exists

```Shell
# if user exist it will return it
$ getent passed tux
tux:x:1000:1000:tux:/home/tux:/bin/bash
```

Declare a variable

```Shell
$ declare -i days
```

Set a value of a declared variable

```Shell
$ read days
30
```

Write an if statement

```Shell
$ if [ $days -lt 1 ] ; then echo "Enter a correct value" ; fi
```

Set an invalid variable and check it again

```Shell
$ read days
Monday
$ if [ $days -lt 1 ] ; then echo "Enter a correct value" ; fi
Enter a correct value
```

Use a modern syntax for if statement

```Shell
$ if (( days < 1 || days > 30 )) ; then echo "Enter a correct value"; fi
```

Repeat the last command

```Shell
$ !r
```

### Complex if statement

```Shell
$ if (( days < 1 )) ; then echo "Enter a numeric value" ; elif (( days > 30 )) then echo "Enter a value to be less than 31" ; else echo "The days are $days"; fi
```

# Testing Strings and Regular Expressions

```Shell
# declare a string variable and convert it to lowercase
$ declare -l user_name

# set the value of the variable
$ read user_name
Bob

# test the variable
$ [ $user_name == 'bob' ] && echo "user is bob"
```

## Testing partial string values

```Shell
$ declare -l browser
$ read browser
Firefox

$ [[ $browser == *fox ]] && echo "The browser's Firefox"
The browser's Firefox
```

## Testing regular expressions

```Shell
$ declare -l test_var
$ read test_var
color

$ [[ $test_var =~ colou?r ]] && echo "${BASH_REMATCH[0]}"
```

# Understanding file attributes

## Testing file attributes

We can test to see if a file is of a specific type. Here we check for a regular file.

```Shell
$ test -f /etc/hosts && echo YES
# or
$ [[ -f /etc/hosts ]] && echo YES
```

- `-f` To test for a regular file: `[[ -f /etc/hosts ]]`
- `-d` Tests for a directory: `[[ -d /etc ]]`
- `-L` Tests for symbolic link `[[ -L /etc/localtime ]]`
- `-e` For the existence of a file no matter the type: `[[ -e /etc/nologin ]]`
- `-r` Tests for the read permission, r = read, w = write, x = execute: `[[ -r /etc/hosts ]]`
- `-k` Tests for the sticky bit: `[[ -k /tmp ]]`
- `-s` Tests for the SUID bit, use g for the GUID bit: `[[ -s /bin/passwd ]]`

### Detect what type of command something is

Use the command `type`

```Shell
$ type test
test is a shell builtin
```

Test multiple commands

```Shell
$ type test [ [[
test is a shell builtin
[ is a shell builtin
[[ is a shell keyword
```

Examples

```Shell
$ test -f /etc
$ echo $?
1

$ test -d /etc
$ echo $?
0
```

# Creating scripts with test conditions

Create a file

```Shell
$ vim dir.sh
```

Add contents of the script to the file

```Shell
#!/bin/bash
declare -l DIR
echo -n "Enter a directory to create: "
read DIR
if [[ -e $DIR ]]
then
	echo "$DIR already exists"
	exit 1
else 
	if [[ -w $PWD ]]
	then
		mkdir $DIR
	else
		echo "You don't have permissions to $PWD"
		exit 2
	fi
fi
```

Make the file executable

```Shell
$ chmod +x dir.sh
```

Run the script

```Shell
$ ./dir.sh
Enter a directory to create: mydir
$
```

Run the script from a folder without permissions

```Shell
$ cd /etc
$ /home/johndoe/dir.sh
Enter a directory to create: dir1
You don't have permissions to /etc

$ echo $?
2
```

# Working with case statement

Return the short form of a month

```Shell
$ date +%b
```

Create the script `season.sh`

```Shell
#!/bin/bash
declare -l month=$(date +%b)
case $month in
	dec | jan | feb )
		echo "Winter";;
	mar | apr | may )
		echo "Spring";;
	jun | jul | aug )
		echo "Summer";;
	sep | oct | nov )
		echo "Automn";;
esac
```

Make the file executable

```Shell
$ chmod +x season.sh
```

Run the script

```Shell
$ ./season.sh 
Spring
```