---
id: Working with variables
aliases: []
tags: []
---

# Working with variables

## Understanding variables

### Variable scope

The scope of a variable defines its effective boundaries.

Variables may be scoped as:

- Local
- Environment
- Command

## Working with the declare command

Declare a variable

```bash
EDITOR=vim
```

View different types of variable

```bash
declare -p EDITOR
typeset EDITOR=vim
```

Export a variable

```bash
declare -x EDITOR
declare -p EDITOR
export EDITOR=vim
```

Print all the environments

```bash
env
```

Remove a variable from the environment

```bash
declare +x EDITOR
```

## Understanding special variable cases

### Change to bash shell

```bash
bash
```

### Constants

Declare a constant

```bash
$ declare -r name=bob
$ name=fred
bash: name: readonly variable
```

### Integer values

Example

```bash
declare -i days=30
days=Monday
declare -p days
declare -i days="0"
```

### Arrays

Example

```bash
declare -a user_name
user_name[0]=bob ; user_name[1]=smith
declare -p user_name
declare -a user_name=([0]="bob" [1]="smith")
```

If you use echo for the variable you will get the first index

```bash
echo $user_name
bob
```

To get all the values from an array variable use the following syntax

```bash
$ echo ${user_name[@]}
bob smith
```

You can also get a separate value from an array

```bash
echo ${user_name[0]}
bob
echo ${user_name[1]}
smith
```

Unset a variable

```bash
unset user_name
```

Declare an associative array

```bash
declare -A user_name
user_name[first]=bob ; user_name[last]=smith
```

Get the values of an associative array

```bash
echo ${user_name[first]}
bob
echo ${user_name[last]}
smith
```

