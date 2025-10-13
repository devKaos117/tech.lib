---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: coreutils
category: command
tags:
  - linux/cmds/cli/utilities
  - linux/cmds/operation/conversion
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Translate or delete characters

Translate, squeeze, and/or delete characters from standard input, writing to standard output

## Command
```txt
tr [OPTIONS]... [SET]...

-c, -C, --complement
	Use the complement of the first given set
-d, --delete
	Delete characters in the first set, do not translate
-s, --squeeze-repeats
	Replace each input sequence of a repeated character that is listed in the first set with a single occurrence of that character
-t, --truncate-set1
	First truncate the first set to length of the second set

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/tr)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/tr-invocation.html#tr-invocation)
