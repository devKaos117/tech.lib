---
category: linux
subjects:
  - component
full_form: NULL
acronym: NULL
---
## Definition

## Environmental Variables
### Declaration

```bash
var="val"
echo $var

arr=("val1" "val2" "val3")
echo ${arr[0]}
```

### Local Variables
Local or shell variables exist only in the current shell, and cannot affect other commands or applications. When the user closes a terminal window or shell, all the variables are lost. They are often associated with user-based tasks and are lowercase by convention

### Global Variables
Environment variables, also called global variables, are available system-wide, in all shells used by Bash when interpreting commands and performing tasks. The system automatically recreates environment variables when a new shell is opened. Here's a list of the most important global variables:

- **BASH** Expands to the full filename used to invoke this instance of bash
- **BASHOPTS** A colon-separated list of enabled shell options
- **BASHPID** Expands to the process ID of the current bash process
- **BASH_SUBSHELL** Set to an initial value of 0, gets incremented by one within each sub-shell or sub-shell environment when the shell begins executing in that environment
- **BASH_VERSION** Expands to a string describing the version of this instance of bash
- **GROUPS** An array variable containing the list of groups of which the current user is a member
- **HISTCMD** The history number, or index in the history list, of the current command
- **HISTFILE** The name of the file in which command history is saved
- **HISTSIZE** The number of commands to remember in the command history
- **HOME** The home directory of the current user
- **HOSTNAME** Automatically set to the name of the current host
- **MACHTYPE** Automatically set to a string that fully describes the system type on which bash is executing, in the standard GNU cpu-company-system format
- **OLDPWD** The previous working directory as set by the [[cd]] command
- **PATH** A colon-separated list of directories for the shell to look in order to find commands
- **PPID** The process ID of the shell's parent
- **PWD** The current working directory as set by the [[cd]] command
- **RANDOM** Each time this parameter is referenced, it expands to a random integer between 0 and 32767. Assigning a value to RANDOM initializes (seeds) the sequence of random numbers
- **SECONDS** Each time this parameter is referenced, it expands to the number of seconds since shell invocation
- **SHELLOPTS** A colon-separated list of enabled shell options
- **SRANDOM** This variable expands to a 32-bit pseudo-random number each time it is referenced. The random number generator is not linear on systems that support [/dev/urandom] or arc4random, so each returned number has no relationship to the numbers preceding it. The random number generator cannot be seeded, so assignments to this variable
- **UID** Expands to the user ID of the current user

## Scripting
### Shell Interpreter
The first line of the script file is usually a commented path for the intended shell to run it. If the file is simply executed, it will try to use the pointed shell, but if it's executed through a shell CLI call, it will be opened with the called shell interpreter.

```bash
#!/bin/bash
```

### Conditional Expressions

```bash
#------- File Operators -------
-a [PATH] # True if file exists
-e [PATH] # True if file exists

-f [PATH] # True if file exists and is a regular file
-d [PATH] # True if file exists and is a directory
-h [PATH] # True if file exists and is a hard link
-L [PATH] # True if file exists and is a symbolic link
-c [PATH] # True if file exists and is a character special file
-b [PATH] # True if file exists and is a block special file
-p [PATH] # True if file exists and is a named pipe (FIFO)
-S [PATH] # True if file exists and is a socket

-r [PATH] # True if file exists and is readable
-w [PATH] # True if file exists and is writable
-x [PATH] # True if file exists and is executable
-N [PATH] # True if file exists and has been modified since it was last read
-u [PATH] # True if file exists and its set-user-id bit is set
-O [PATH] # True if file exists and is owned by the effective user id
-g [PATH] # True if file exists and its set-group-id bit is set
-G [PATH] # True if file exists and is owned by the effective group id
-s [PATH] # True if file exists and has a size greater than zero

-t [PATH] # True if the file descriptor is open and refers to a terminal

[PATH] -ef [PATH] # True if pointed paths refer to the same device and inode numbers
[PATH(1)] -nt [PATH(2)] # True if file1 is newer (according to modification date) than file2, or if file1 exists and file2 does not
[PATH(1)] -ot [PATH(2)] # True if file1 is older than file2, or if file2 exists and file1 does not

#------- String Operators -------
-z [STRING] # True if the length of string is zero
-n [STRING] # True if the length of string is non-zero
[STRING] == [STRING] # True if the strings are equal
[STRING] != [STRING] # True if the strings are not equal
[STRING(1)] < [STRING(2)] # True if string1 sorts before string2 lexicographically
[STRING(1)] > [STRING(2)] # True if string1 sorts after string2 lexicographically

#------- Arithmetic Binary Operators -------
x -eq y # return true if x is equal to y
x -ne y # return true if x is not equal to y
x -lt y # return true if x is less than y
x -le y # return true if x is less than or equal to y
x -gt y # return true if x is greater than y
x -ge y # return true if x is greater than or equal to y
```

### Arithmetic Evaluation

```bash
+ - # addition, subtraction
* / # multiplication, division
** % # exponentiation, remainder
a++ b-- # variable post-increment and post-decrement
++a --b # variable pre-increment and pre-decrement
= *= /= %= += -= <<= >>= &= ^= |= #assignment
! ~ #logical and bitwise negation
<< >> #left and right bitwise shifts
<= >= < > #comparison
== != #equality and inequality
& #bitwise AND
^ #bitwise exclusive OR
| #bitwise OR
&& #logical AND
|| #logical OR
expr?expr:expr #conditional ternary operation
expr1 , expr2 #comma separator
```

### Command Blocks

```bash
function_name() {
	# block
}

if [EXPRESSION]; then
	# block
elif [EXPRESSION]; then
	# block
else
	# block
fi

case [EXPRESSION] in
	a)
		# block
	;;
	x|y)
		# block
	;;
	p&q)
		# block
	;;
	*)
		# block
esac

for i in list; do
	# block
done

select i in list; do
	# block
done

while [EXPRESSION]; do
	# block
done

until [EXPRESSION]; do
	# block
done
```

### Arguments

```bash
$n # nth argument passed to the script
$? # last command exit status
```

## Special Characters

```bash
# * Asterisk
	# String wildcard standing for any sequence of characters
	ls -lah /dev/tty*
# . Dot
	# Reference to current directory
	ls ./
	# Reference to parent directory
	cd ..
# ! Exclamation Mark
	# Invert command exit status
	! ls /
	# Alias for history library functions
	!! # Last command
	![STRING] # Last command that matches STRING
	![-][NUMBER] # Command located in the given history index
	!:^ # First argument from last command
	!1:3 # Third argument from the first command
	!-2:$ # Second argument from the second last command
	!:* # All arguments from last command
# ? Quotation Mark
	# String wildcard standing for any single character
	ls -lah /dev/sd?1
# | Pipe
	# Chain commands together, sending one's standard output to the next standard input
	head /proc/cpuinfo | tr a-z A-Z
	# Acts as an OR logical statement, executing the following command if the exit status of the first one was different from 0
	cat test.txt || touch test.txt
# / Forward Slash
	# Directory pathname separator
	/usr/bin
# \ Backslash
	# Escape next character
	find / -name '*.py' \! -mtime 5
# $ Dollar Sign
	# Precedes variables names
	echo $PATH
# & Ampersand
	# Launch command as a background job
	sudo apt update -y &
	# Boolean AND operator
	mkdir test && rm -r dir
# <> Angle Brackets
	# Redirects output streams, overwriting or concatenating
	tree -d -L 5 / > file_tree.txt
	ping -i 5 -c 12 1.1.1.1 >> file_ping.txt &&	ping -i 5 -c 40 1.1.1.1 >> file_ping.txt
	ls /test 2> error.txt
	ls /test > file.txt 2> error.txt
	ls /test > file.txt 2>& 1
	ls /test &> file_and_error.txt
	# Redirects standard input
	cat < ./file.txt
# = Equals sign
	# Defining attributes of a command parameter
	mkdir --context=SELinux_CTX
# ; Semicolon
	# Line Breaker
	mkdir test; rm -r test
# ' Simple Quote
	# Strong quote for string
	echo 'string without any special chars * [] "" $PATH'
# " Double Quote
	# Weak quote for string
	echo "string, without * globbing, but with vars $PATH"
# ~ Tilde
	# Shorthand for current user’s home directory
	ls ~/Desktop
# # Number Sign
	# Comment notation
# () Parentheses
	# Encapsulate a subshell
	(cd /; pwd)
	echo "$(ls -lah /dev/sd?)"
	if [[ $( COMMAND )$ ]] then echo "Exit status == 0" else "Exit status != 0"
	# Encapsulate integer arithmetic space, allowing for assignments, logical and mathematical operations
	i=1
	(( i+=1 ))
# [] Brackets
	# String wildcard standing for any of the embraced characters
	ls -lah /dev/sd[abc][12345]
	# Alternative call for the test command
	[1 -eq 1]
	# Encapsulating boolean tests
	[[ 1 == 1 ]] && echo "True" || echo "False"
# {} Braces
	# Expansion
	touch file{a..b}{0..9}
	echo {2,4,8,16,32,64,128,256,521,1024}
	echo {\!..\~} mv file.txt{,.bak}
	# String interpolation
	$ban=banana
	echo ${ban}nana
# + Plus Sign
# - Minus Sign
# _ Underscore
```

## Relevant Reading
- [[]]

## External Reference
[gnu.org/bash](https://www.gnu.org/software/bash/manual/html_node/index.html)
