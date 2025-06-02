---
package: Bash built-in
category: command
tags:
  - file
  - file/navigate
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] Bash built-in

> [!info] Change the current working directory

Change the current working directory to the indicated one, being an absolute or relative path. If given a reference to the standard input, change the directory back to the previous one

## Command
```txt
cd [-P|-L] [PATH]

-P
	Use the physical directory structure instead of following symbolic links
-L
	Forces symbolic links to be followed
```

## Exit Status
- n - status

## Links
[manned.org](https://manned.org/cd)
