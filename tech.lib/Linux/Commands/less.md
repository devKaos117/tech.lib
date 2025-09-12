---
package: less
category: command
tags:
  - file
  - file/read
  - cli
  - cli/text
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] less

> [!info] File Paginator

Similar to [[more]], but allows for backward movement in the file as well as forward movement. Also, less does not have to read the entire input file before starting, so with large input files it starts up faster than text editors

## Command
```txt
less [OPTION]... [PATH]...

-f, --force
	Forces non-regular files to be opened
-e, --quit-at-eof
	Causes less to automatically exit the second time it reaches end-of-file
-E, --QUIT-AT-EOF
	Causes less to automatically exit the first time it reaches end-of-file
--mouse
	Enables mouse input

-i, --ignore-case
	Causes searches to ignore case
-p, --pattern=[PATTERN]
	Equivalent to specifying +/PATTERN. It tells less to start at the first occurrence of pattern in the file

-J, --status-column
	Displays a status column at the left edge of the screen
-N, --LINE-NUMBERS
	Causes a line number to be displayed at the beginning of each line in the display
-m, --long-prompt
	Causes less to prompt verbosely, with the percent into the file. By default, less prompts with a colon
-M, --LONG-PROMPT
	Causes less to prompt even more verbosely than more

--file-size
	Determine the size of the file immediately after opening the file
-q, --quiet, --silent
	Causes moderately "quiet" operation
-Q, --QUIET, --SILENT
	Causes totally "quiet" operation

--use-color
	Enables colored text in various places
-s, --squeeze-blank-lines
	Causes consecutive blank lines to be squeezed into a single blank line
-S, --chop-long-lines
	Causes lines longer than the screen width to be chopped (truncated) rather than wrapped

-?, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/less)
