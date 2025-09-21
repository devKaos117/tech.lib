---
package: coreutils
category: command
tags:
 - linux/cmds/file/navigate
 - linux/cmds/file/inspect
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] List directory contents and files information

By default it lists the contents of directories, not recursively, and omitting hidden files, sorting the output alphabetically, according to the locale settings in effect. If standard output is a terminal, the output is in vertically sorted columns and control characters are output as question marks, otherwise, the output is listed one per line and control characters are output as-is

## Favorite Uses

```Sh
ls -l --all --human-readable --inode --context --color=auto
```

## Command

```sh
ls [OPTIONS]... [FILE]...

-l
	Use a long listing format
-n, --numeric-uid-gid
	Like -l, but list numeric user and group IDs

-a, --all
	List hidden files
-I, --ignore=[PATTERN]
	Do not list implied entries matching shell pattern 
--hide=[PATTERN]
	Do not list implied entries matching shell pattern (overridden by -a or -A)

-h, --human-readable, --si
	Print sizes in human readable format. --si uses powers of 1000 not 1024
--block-size=[BYTES]
	Define the byte-size of the blocks
--color[always|auto|**never**]
	Colorize the output
--zero
	Separate the entries on output using the ASCII NULL

-i, --inode
	Print the index number of each file
-N, --literal
	Print raw entry names
-q, --hide-control-chars
	Print '?' instead of non graphic characters  
-s, --size
	Print the allocated size of each file, in blocks 
-R, --recursive
	List subdirectories recursively
-Z, --context
	Print any SELinux security context of each file

--sort=[none|size|time|version|extension|width]
	Define the sorting criteria
--time=[atime|ctime|**mtime**|status|access|use|birth|creation]
	With -l, define how to show time
-r, --reverse
	Reverse order while sorting

--help
	Display the help information and exit 
--version
	Output version information and exit
```
## Exit Status

- 0 - Success
- 1 - Minor problems
- 2 - Serious problem

## Links

[linux.die.net](https://linux.die.net/man/1/ls)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/ls-invocation.html#ls-invocation)
