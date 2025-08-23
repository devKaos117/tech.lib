---
package: Bash built-in
category: command
tags:
  - cli
  - cli/help
  - operation
  - operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] Bash built-in

> [!info] Display the type of the command

Indicate how each name would be interpreted if used as a command name

## Command
```txt
type [OPTION]... [STRING]...

-a
	Display all locations containing an executable with the given name
-f
	Suppress shell function look up
-P
	Force a path search for each name 
-t
	Output a single word

--help
	Display the help information and exit 
```

## Links
[linux.die.net](https://linux.die.net/man/1/file)
