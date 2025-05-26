## Cursor Navigation and Line Editing

Zsh provides powerful shortcuts for efficient cursor movement and text manipulation
### Cursor Movement

```bash
# Move cursor to beginning of line
Ctrl + a

# Move cursor to end of line
Ctrl + e
```

### Text Deletion

```bash
# Delete from cursor to start of line
Ctrl + u

# Cut from cursor to tne of line
Ctrl + k

# Cut from cursor to start of preceding word
Ctrl + W

# Remove from cursor to end of next word
Alt + D
```

### Text manipulation

```bash
# Paste (yank) previously cut text
Ctrl + y

# Undo the last operation
Ctrl + Shift + _

# Swap the current word with previous word
Ctrl + xt
```

### Command Editing

```bash
# Edit current command in default editor 
Ctrl + xe

# Clear terminal screen
Ctrl + l

# Move current command to buffer, clear line for new command
Ctrl + q

```

## Globbing

Zsh provides powerful globbing features for flexible file matching

### Standard Globbing

```bash
# Match all .txt files in the current directory
*.txt
# example, press tab after the command to expand all files
ls *.md
```

### Recursive Globbing

```bash
# Match all .txt files recursively within directories
**/*.txt
# example
ls **/*.java
```

### Extended Globbing

Enable extended globbing for more advanced pattern matching: `setopt EXTENDED_GLOB`

```bash
# List only regular files
ls *(.)

# List only directories
ls *(/)
```

## Command History and Expansion

Zsh offers powerful features for recalling and manipulating previous commands

### History Recall

```bash
# Insert last argument of previous command
!$

# Repeat the prevbious command without arguments
!:0

# Run the most recent command that started with `vi`
!vi
```

### History Modification

```bash
# Substitute 'x' with 'y' in the previous command
!!:s/x/y

# Replace 'foo' with 'bar' in the previous command and execute
^foo^bar
# example
find . -type f -name '*.txt' -execa chmod sudo 600 {} +
^execa^exec
```

### Current Command Expansion
```bash
# Execute previous command 
!!
# example
find . -type f -name '*.txt' -execa chmod sudo 600 {} +
sudo !!

# Expand first argument of the current command
!#^

# Expand last argument of the current command
!#$
```

### Quick Fixes

```bash
# Fix command: opens last command in editor
fc

# Repeat last command (cam be combined with substitution, e.g., r foo=bar)
r
```

## Parameter Expansion and Shell Variables

Zsh provides powerful features for working with parameters and shell variables

### Positional Parameters

```bash
# Number of positional parameters passed to the script or function
$#

# All positional parameters, individually quoted
$@

# All positional parameters as a single, space-separated string
$*
```

### Special Variables

```bash
# Exit status of the last executed command
$?

# Last argument of the previous command
$_
```

## Path and Filename Operations

Zsh provides various shortcuts for working with file paths and filenames

### Path Expansion

```bash
# Quick path expansion (e.g., expands to /usr/local/bin)
/u/lo/b<Tab>
# example
ls /u/lo/b<Tab>
```

### Filename Manipulation

```bash
# set a file variabla
file=demo.sh

# Remove extension from a filename variable
$file:r
echo $file:r

# Get just the extension from a filename variable
$file:e
echo $file:e

# Convert a filename variable to uppercase
$file:u
echo $file:u

```

## Brace and Range Expansions

Zsh offers powerful features for generating sequences and sets of items

### Brace Expansion

```bash
# Expand to multiple terms
mkdir -p {apple,banana,cherry}
# Delete empty directories
^mk^rm<Tab>

# Expand to a numericc range (outputs: 1 2 3 4 5)
{1..5}
```

## Directory Navigation Techniques

Efficient directory navigation is crucial for command-line productivity
### Directory Shortcuts

```bash
# Go to previous directory
cd -

# Show directories selection list
cd -<Tab>
```

These shortcuts streamline directory navigation, making in easier to move between frequently used directories

## Custom commands and Key Bindings

Zsh allows for the creation of custom commands and key bindings to further enhance your workflow

### Understanding `BUFFER` and `zle`

- `BUFFER` - Represents the current command line content
- `zle` - Zsh Line Editor, used to manipulate the command line

### Custom Command Example

To create a custom command to copy teh entire command line to the clipboard

```bash
copy-line-to-clipboard() {
	echo -n $BUFFER | xclip -selection clipboard
}
zle -N copy-line-to-clipboard
```
This function uses `xclip` to copy the content of `BUFFER` (the current command line) to the clipboard.

### Adding Custom Key Bindings

Bind custom functions or existing ZLE commands to specific key sequences

```bash
# Bind Ctrl+Y to copy-line-to-clipboard
bindkey '^Y' copy-line-to-clipboard
```