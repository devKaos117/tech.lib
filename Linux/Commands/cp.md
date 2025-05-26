---
package: coreutils
category: command
tags:
  - files
  - operation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Copy files

## Command
```txt
cp [OPTIONS]... [SOURCE]... [DESTINY]

-r, -R, --recursive
	Copy directories recursively
-a, --archive
	Copy files and directories recursively, never following symbolic links and preserving all the attributes
-t, --target-directory=[PATH]
	Copy all the source arguments into the given path

-b
	Make a backup of each existing destination file
--backup[=PATH]
	Make a backup of each existing destination file at the given path
--sparce=[auto|always|never]
	Control creation of sparse files

-p, --preserve=[mode|ownership|timestamps|context|links|xattr|all]
	Preserve the given attributes
--no-preserve=[mode|ownership|timestamps|context|links|xattr|all]
	Don't preserve the specified attributes

-u, --update
	Copy only when the source is newer than the destination file or if it does not exist
-f, --force
	If an existing destination file cannot be opened, remove it and try again
-n, --no-clobber
	Do not overwrite existing files
-i, --interactive
	Prompt before overwriting
--remove-destination
	Remove each existing destination file before attempting to open it

-L, --dereference
	Always follow symbolic links in the source files
-d, -P, --no-dereference
	Never follow symbolic links in the source files
-H
	Follow command-line symbolic links in the source files
-l, --link
	Link files instead of copying
-s, --symbolic-link
	Make symbolic links instead of copying
--reflink=[always|auto]
	Control clone/CoW copies

--parents
	Use full source file name under the destiny directory
-T, --no-target-directory
	Treat the destiny as a normal file
-x, --one-file-system
	Stay on this file system
-Z, --context=[CTX]
	Set the SELinux security context of the copy
-v, --verbose
	Explain what's being done

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/cp)
[www.gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/cp-invocation.html#cp-invocation)
