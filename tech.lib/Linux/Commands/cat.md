---
package: coreutils
category: command
tags:
  - linux/cmds/file/read
  - linux/cmds/cli/text
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Concatenate and print files

Concatenate files or standard input into standard output

## Command
```txt
cat [OPTION]... [PATH]...

-v, --show-nonprinting
	Use ^ and M- notation, except for LFD and TAB
-E, --show-ends
	Display $ at end of each line
-T, --show-tabs
	Display TAB characters as ^I
-A, --show-all
	Equivalent to -vET

-n, --number
	Number all output lines
-b, --number-nonblank
	Number nonempty output lines
-s, --squeeze-blank
	Suppress repeated empty output lines

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/cat)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/cat-invocation.html#cat-invocation)
