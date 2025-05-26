# Creating Functions

### Functions

Shell functions encapsulate blocks of code in named elements that can be executed or called from scripts or directly at the CLI

### Very simple function

Functions are named elements that encapsulate modular blocks of code. The function here is named say_hello.

```Shell
# declare a function
$ function say_hello () {
  echo hello
}

# call the function
$ say_hello
hello
```

### List functions

```Shell
$ declare -f
```

List function names

```Shell
$ declare -F
```

Print the definition of a function

```Shell
$ declare if say_hello
say_hello () 
{ 
    echo hello
}
```

# Exporting Functions

Export a function

```Shell
$ declare -xf say_hello
```

# Working with Arguments and Returns

### Passing arguments

Functions can accept arguments in a similar way to script.

```Shell
$ create_user tux
# inside the function tux would be $1
```

### Return Values

Using the command return in a similar way to exit in conditional statements. The value acts as an exit code to the function, and the return command will quit the function without further code execution.

- return 1 (on error)
- return 0 (on success)

### Putting it all together

Create the function

```Shell
$ function create_user () {
> if ( getent passwd $1 > /dev/null ) ; then
> echo "The user: $1 already exists"
> return 1
> else 
> echo "Creating new user $1"
> sudo useradd $1
> return 0
> fi
> }
```

Call the function

```Shell
$ create_user jane
The user: jane already exists

$ echo $?
1

$ create_user tux
Creating new user tux
```

# Best Practice

### Best Practices

Functions should be standalone and not dependent on other elements such as variables from the master script. This limits how much the function can be used in other scripts.

### Bad vs Good

The first example relies on the $are variable being set in the shell.

The second example takes the value as an argument, setting the variable in the function still allows the variable to be named but we are not reliant in the calling shell. A local variable prevents $age from leaking to the shell.

```Shell
$ function print_age () {
> echo $age
> }
```

```Shell
$ unset age ; unset -f print_age

$ function print_age () {
> local age=$1
> echo $age
> }
```

Call the function

```Shell
$ print_age 44
44
```