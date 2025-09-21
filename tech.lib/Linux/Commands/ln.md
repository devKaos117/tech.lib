---
package: coreutils
category: command
tags:
  - linux/cmds/file/manage
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Make links between files

## Command
```txt
ln [OPTIONS]... [TARGET] [LINK]

-s, --symbolic
	Make symbolic links instead of hard links
-L, --logical
	Dereference targets that are symbolic links
-P, --physical
	Make hard links directly to symbolic links
-n, --no-dereference
	Treat the link as a normal file if it is a symbolic link to a directory
-d, -F, --directory
	Allow the superuser to attempt to hard link directories

-f, --force
	Remove existing destination files
-i, --interactive
	Prompt whether to remove destinations
-b
	Make a backup of each existing destination file
--backup=[PATH]
	Make a backup of each existing destination file at the given path
-S, --suffix=[STRING]
	Override the usual backup suffix

-t, --target-directory=[PATH]
	Specify the directory in which create the links
-T, --no-target-directory
	Treat the link as a normal file
-v, --verbose
	Print the name of each linked file

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/ln)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/ln-invocation.html#ln-invocation)
