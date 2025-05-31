---
package: Bash built-in
category: command
tags:
  - shell
  - environment
  - cli
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
