---
package: util-linux
category: command
tags:
  - linux/cmds/cli/help
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] util-linux

> [!info] Locate the binary, source, and manual page files for a command

Locates the binary, source and manual files for the specified command names. The supplied names are first stripped of leading pathname components

## Command
```txt
whereis [OPTION]... [COMMAND]...

-b
	Search for binaries
-m
	Search for manuals
-s
	Search for sources

-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/whereis)
