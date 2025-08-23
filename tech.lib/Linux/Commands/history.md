---
package: Bash Built-in
category: command
tags:
  - cli
  - cli/environment
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] Bash Built-in

> [!info] Bash history library

History expansions introduce words from the history list, located in [[File Hierarchy Standard#/home|~/.bash_history]], into the input stream

## Command
```txt
history [OPTION]... [ARGUMENT]

[-][NUMBER]
	Displays the NUMBER arguments (leave it blank to list all)
-c
	Clears the entire history list
-a
	Appends the history list to the history file
-w
	Overwrite history file with history list
-d [-][NUMBER][-NUMBER]
	Delete a specific entry or range of entries from the history
```

## Links
[linux.die.net](https://linux.die.net/man/3/history)
[gnu.org](https://www.gnu.org/software/bash/manual/html_node/Bash-History-Builtins.html)
