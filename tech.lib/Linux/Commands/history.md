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
> [!package] Bash Built-in

> [!info] Bash history library

History expansions introduce words from the history list, located in [[Linux/File Hierarchy Standard#/home|~/.bash_history]], into the input stream

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

## Relevant Reading
- [[]]

## External Reference
[cgit.git.savannah.gnu.org](https://cgit.git.savannah.gnu.org/cgit/bash.git/)
[gnu.org/manual](https://www.gnu.org/software/bash/manual/bash.html)
[gnu.org](https://www.gnu.org/software/bash/)
