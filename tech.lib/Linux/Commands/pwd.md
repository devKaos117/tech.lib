---
package: coreutils
category: command
tags:
  - files
  - navigation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Print the full filename of the current working directory

## Command
```txt
pwd [-P|-L]

-L, --logical
	Use PWD from environment, even if it contains symlinks 
-P, --physical
	Avoid all symlinks 

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Exit Status
- 0 - success
- n - failure

## Links
[linux.die.net](https://linux.die.net/man/1/pwd)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/pwd-invocation.html#pwd-invocation)
