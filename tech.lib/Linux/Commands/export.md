---
category: cli
subjects:
  - binary
language: c
package: bash
tags:
  - linux/cmds/cli/environment
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] Bash built-in

> [!info] Export shell variables to child processes

Export the given attribute to the variables corresponding to the specified names, which shall cause them to be in the environment of subsequently executed commands

## Command
```txt
export [-p] [VAR=VALUE]...

-p
	Write to the standard output the names and values of all exported variables
```

## Relevant Reading
- [[]]

## External Reference
[cgit.git.savannah.gnu.org](https://cgit.git.savannah.gnu.org/cgit/bash.git/)
[gnu.org/manual](https://www.gnu.org/software/bash/manual/bash.html)
[gnu.org](https://www.gnu.org/software/bash/)