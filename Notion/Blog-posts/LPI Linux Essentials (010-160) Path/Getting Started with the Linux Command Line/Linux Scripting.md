## Create a simple calculator script

Create a script

```Shell
$ nano myscript.sh
```

Add the contents of the script

```Shell
#!/bin/bash
declare -i number1
declare -i number2
declare -i total
echo "What's your favorite number? "
read number1
echo "What num do you relly hate? "
read number2
total=$number1*$number2
echo "Aha! They equal " $total
exit0
```

The first line of every script has to tell Linux that it's an executable script and which shell interpreter we're going to use.

Make the file exetuble

```Shell
$ chmod +x myscript.sh
```

Run the script

```Shell
$ ./mysript.sh
```

## Working with Loops and Flow Controls

Create the file

```Shell
$ nano theloop.sh
```

Add the contents of the script

```Shell
#!/bin/bash
for i in {0..10..2}
  do
    echo "We've been through this $i times already!"
  done
```

### Create a script using files

Create some files

```Shell
$ touch file1 file2 file3
```

Create the script

```Shell
$ nano newloop.sh
```

Add contents to the file

```Shell
#!/bin/bash
for filename in file1 file2 file3
  do
    echo "Important stuff" >> $filename
  done
```

Check the contents of a file

```Shell
$ cat file3
Important stuff
```

### Control a script process using if

Create the script

```Shell
$ nano colors.sh
```

Add the script

```Shell
#!/bin/bash
echo "What's your favorite color? "
read text1
echo "What's your best friend's favorite color? "
read text2

if test $text1 != $text2; then
  echo "I guess opposites attract."
else 
  echo "You two do think alike!"
fi

exit 0
```

### Control a script process using while

Create the script

```Shell
$ nano counter.sh
```

Add the script

```Shell
#!/bin/bash
declare -i counter
counter=10

while [ $counter -gt 2 ]; do
  echo The counter is $counter
  counter=counter-1
done

exit 0
```

### Control a script process using case

Create the file

```Shell
$ nano weather.sh
```

Add the script

```Shell
#!/bin/bash
echo "What's tomorrow's weather going to be like?"
read weather

case $weather in
  sunny | warm ) echo "Nice! I love it when it's " $weather
  ;;
  cloudy | cool ) echo "Not bad..." $weather" is ok, too"
  ;;
  rainy | cold ) echo "Yuk!" $weather" weather is depressing"
  ;;
  * ) echo "Sorry, I'm not familiar with that weather system."
  ;;
esac

exit 0
```