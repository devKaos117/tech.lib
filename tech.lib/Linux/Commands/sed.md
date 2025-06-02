---
package: sed
category: command
tags:
  - cli
  - cli/text
  - operation
  - operation/filtering
  - operation/manipulation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] sed

> [!info] Stream editor for filtering and transforming text

A stream editor is used to perform basic text transformations on an input stream. While in some ways similar to an editor which permits scripted edits sed works by making only one pass over the input(s), and is consequently more efficient

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
sed [OPTION]... [PATH]

-E, -r, --regexp-extended
	Use extended regular expressions in the script
-e, --expression=[STRING]
	Add the script to the commands to be executed
-f, --file=[PATH]
	Add the contents of a script-file to the commands to be executed

-i[SUFFIX], --in-place=[SUFFIX]
	Edit files in place (makes backup if SUFFIX supplied)
-c, --copy
	Use copy instead of rename when shuffling files in -i mode
-s, --separate
	Sonsider files as separate rather than as a single, continuous long stream
-u, --unbuffered
	Load minimal amounts of data from the input files and flush the output buffers more often

--follow-symlinks
	Follow symlinks when processing in place
-l, --line-length=[NUMBER]
	Specify the desired line-wrap length for the l command
-z, --null-data
	Separate lines by NUL characters

--debug
	Annotate program execution
-n, --quiet, --silent
	Suppress automatic printing of pattern space

--help
	Display the help information and exit 
--version
	Output version information and exit

COMMANDS


```

## Exit Status
- 0 - Success
- 1 - Invalid command, invalid syntax, invalid regular expression or a GNU ``sed`` extension command used with ``--posix``
- 2 - One or more of the input file specified on the command line could not be opened
- 4 - An I/O error, or a serious processing error during runtime, aborted immediately

## Links
[linux.die.net](https://linux.die.net/man/1/sed)
[gnu.org](https://www.gnu.org/software/sed/manual/sed.html)
