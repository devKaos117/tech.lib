---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: coreutils
category: command
tags:
  - linux/cmds/file/manage
  - linux/cmds/operation/transfering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Move or rename files

Moves the files specified to the destination path, or rename it if the destiny path is the same as the source. If the destination's filesystem differs from the source one, it will copy the source to the destiny while trying to keep the extended attributes, and then it deletes the source

## Command
```txt
mv [OPTIONS]... [SOURCE]... [DESTINY]

-t, --target-directory=[PATH]
	Move all source arguments into the given path
-T, --no-target-directory
	Treat the destiny as a normal file

-n, --no-clobber
	Do not overwrite
-f, --force
	Do not prompt before overwriting
-i, --interactive
	Prompt before overwriting

-b
	Make a backup of each existing destination file
--backup=[PATH]
	Make a backup of each existing destination file at the given path
-u, --update
	Move only when the source is newer than the destination file or if it does not exist
-v, --verbose
	Explain what's being done
-Z
	Adjusts the SELinux security context according to the system default type for destination files and each created directory

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/mv)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/mv-invocation.html#mv-invocation)
