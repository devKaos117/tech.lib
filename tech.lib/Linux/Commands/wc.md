---
package: coreutils
category: command
tags:
  - cli
  - cli/text
  - file
  - file/inspect
  - operation
  - operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Count lines, words, and bytes

Print newline, word, and byte counts for each of the given input, and a total line if more than one input is specified

## Command
```txt
wc [OPTION]... [PATH]...

-c, --bytes
	Print the byte counts
-m, --chars
	Print the character counts
-w, --words
	Print the word counts
-l, --lines
	Print the newline counts

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/wc)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/wc-invocation.html#wc-invocation)
