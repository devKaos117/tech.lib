---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: neovim
category: command
tags:
  - linux/cmds/file/read
  - linux/cmds/file/write
  - linux/cmds/cli/text
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] neovim

> [!info] CLI text editor

[[vim]] based programmer's text editor

## Command
```txt
nvim [OPTION]... [PATH]...

--
	End of options. Remaining arguments are treated as literal file names

-R
	Read-only mode
-m
	Resets the write option, to disable file modifications. Writing to a file is disabled, but buffers can still be modified
-M
	Resets the write and modifiable options, to disable file and buffer modifications
-b
	Binary mode

-V[NUMBER][PATH]
	Verbose mode. NUMBER defines the verbose level, (default: 10). If PATH is specified, append messages to the pointed file instead of printing them
--noplugin
	Skip loading plugins
--clean
	Start Nvim with factory defaults

-o[NUMBER]
	Open NUMBER windows stacked horizontally. If NUMBER is omitted, open one window for each file
-O[NUMBER]
	Like -o, but tile windows vertically
-p[NUMBER]
	Like -o, but for tab pages

+/[PATTERN]
	For the first file, position the cursor on the first occurrence of PATTERN
+[COMMAND], -c [COMMAND]
	Execute command after reading the first file. Up to 10 instances allowed
--cmd [COMMAND]
	Like -c, but execute command before processing any vimrc. Up to 10 instances of these can be used independently from instances of -c

INSIDE ACTIONS

	[NUMBER][ACTION]
		Allow to performs actions multiple times
				
	/[STRING]
		Search mode (use n and N to navigate)
				
	i
		Insertion mode (before)
	a
		Insertion mode (after)
	A
		Insertion mode (EOL)

	x
		Delete one character
	dd
		Delete one line
	
	yy
		Copy line
	p
		Paste from clipboard
	
	$
		Go to EOL
	0
		Go to the first character in the line
	G
		Go to the last line. If preceded by a number n, it will go to the nth line 


INSIDE COMMANDS

	:[COMMAND]!
		Force action
	:help [STRING]
		Open a windows and display the help file in read-only. If STRING is provided, jump to the subject that matches it
	:i
		Insert text
	:w
		Write changes to file
	:q
		Quit

-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/neovim/neovim)
[neovim.io](https://neovim.io/)
