---
package: bash
category: command
tags:
  - linux/cmds/cli/shell
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] bash

> [!info] GNU Bourne-again shell

sh-compatible command language interpreter that executes commands read from the standard input or from a file

## Command
```txt
bash [OPTION]... [ARGUMENT]...

-c [COMMAND [ARGUMENT]...]
	Commands are read from the first non-option argument command_string

-i
	Interactive shell
-l, --login
	Make bash act as if it had been invoked as a login shell

--debugger
	Arrange for the debugger profile to be executed before the shell starts
--noprofile
	Do not read either the system-wide startup file or any of the personal initialization files

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/bash)
[gnu.org](https://www.gnu.org/software/bash/)
