---
category: cli
subjects:
  - binary
language: c
package: bash
tags:
  - linux/cmds/file/navigate
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

## External Reference
[cgit.git.savannah.gnu.org](https://cgit.git.savannah.gnu.org/cgit/bash.git/)
[gnu.org/manual](https://www.gnu.org/software/bash/manual/bash.html)
[gnu.org](https://www.gnu.org/software/bash/)
