---
package: coreutils
category: command
tags:
  - cli
  - cli/utilities
  - operation
  - operation/transfering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Read from standard input and write to files or standard output

## Command
```txt
tee [OPTIONS]... [PATH]...

-a, --append
	Append to the given file instead of overwriting
-i, --ignore-interrupts
	Ignore interrupt signals

--output-error=[warn|warn-nopipe|exit|exit-nopipe]
	Set the behavior on write error
-p
	Operate in a more appropriate mode with pipes

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/tee)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/tee-invocation.html#tee-invocation)
