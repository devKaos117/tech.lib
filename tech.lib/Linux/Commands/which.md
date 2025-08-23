---
package: which
category: command
tags:
  - cli
  - cli/environment
  - cli/help
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] which

> [!info] Locate a program in the user's path

For each of its arguments it prints to stdout the full path of the executables that would have been executed when this argument had been entered at the shell prompt

## Command
```txt
which [OPTION]... [COMMAND]...

--all, -a
	Print all matching executables in PATH, not just the first
--tty-only
	Stop processing options on the right if not on tty

--skip-dot
	Skip directories in PATH that start with a dot
--skip-tilde
	Skip directories in PATH that start with a tilde and executables which reside in the HOME directory
--show-dot
	If a directory in PATH starts with a dot and a matching executable was found for that path, then print the relative path
--show-tilde
	Output a tilde when a directory matches the HOME directory. This option is ignored when which is invoked as root

-h, --help
	Display the help information and exit 
-v, -V, --version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/which)
