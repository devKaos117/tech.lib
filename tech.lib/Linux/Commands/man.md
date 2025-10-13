---
category: cli
subjects:
  - binary
language: c
tags:
  - NULL
package: man-db
category: command
tags:
  - linux/cmds/cli/help
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] man-db

> [!info] Interface to system reference manuals

The system's manual pager. Each page argument given to ``man`` is normally the name of a program, utility or function. Once called, the ``man`` command will search the available sections in a pre-defined order and display the first page found. The pages sections:

| n	 | section |
| -- | -- |
| 1	  | Executable programs or shell commands |
| 2	  | System calls (functions provided by the kernel) |
| 3	  | Library calls (functions within program libraries) |
| 4	  | Special files (usually found in [[File Hierarchy Standard#/dev\|/dev]]) |
| 5	  | File formats and conventions |
| 6	  | Games |
| 7	  | Miscellaneous (including macro packages and conventions) |
| 8	  | System administration commands |
| 9	  | Kernel routines |

## Command
```txt
man [OPTION]... [1-9] [STRING]

-d, --debug
	Print debugging information
-w, --where, --path, --location
	Don't actually display the manual page, but do print the location of the source nroff file that would be formatted

-f, --whatis
	Approximately equivalent to whatis. Display a short description from the manual page, if available
-k, --apropos
	Approximately equivalent to apropos. Search the short manual page descriptions for keywords and display any matches
-K, --global-apropos
	Search for text in all manual pages. This is a brute-force search, and is likely to take some time
--regex
	Show all pages with any part of either their names or their descriptions matching each page argument as a regular expression
--wildcard
	Show all pages with any part of either their names or their descriptions matching each page argument using shell-style wildcards
--names-only
	If the --regex or --wildcard option is used, match only page names, not page descriptions

-P, --pager=[COMMAND]
	Specify which output pager to use. By default, man uses less, falling back to cat if less is not found or is not executable
-E, --encoding=[ascii|latin1|utf8]
	Generate output for a character encoding other than the default
-H, --html=[COMMAND]
	This option will cause groff to produce HTML output, and will display that output in the given web browser

-?, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Exit Status
- 0 - Success
- 1 - Usage, syntax or configuration file error
- 2 - Operational error
- 3 - A child process returned a non-zero exit status
- 16 - At least one of the pages/files/keywords didn't exist or wasn't matched

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/man)
