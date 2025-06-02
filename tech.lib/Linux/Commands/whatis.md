---
package: man-db
category: command
tags:
  - NONE
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] man-db

> [!info] Display one-line descriptions from manual pages

Each manual page has a short description available within it. ``whatis`` searches the manual page names and displays the manual page descriptions of any name matched

## Command
```txt
whatis [OPTION]... [COMMAND]...

-l, --long
	Do not trim output to the terminal width

-r, --regex
	Interpret each name as a regular expression
-w, --wildcard
	Interpret each name as a pattern containing shell style wildcards

-d, --debug
	Print debugging information
-v, --verbose
	Print verbose warning messages

-?, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Exit Status
- 0 - Success
- 1 - Usage, syntax or configuration file error
- 2 - Operational error
- 16 - Nothing was found that matched the criteria specified

## Links
[linux.die.net](https://linux.die.net/man/1/whatis)
