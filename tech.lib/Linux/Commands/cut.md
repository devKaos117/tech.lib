---
package: coreutils
category: command
tags:
  - linux/cmds/cli/text
  - linux/cmds/operation/filtering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Remove sections from input

Writes to standard output the selected parts of each line of the given inputs

## Favorite Uses
```sh
cut -d DELIMETER -f START-END
```

## Command
```txt
cut [OPTION]... [PATH]...

-b, --bytes=[[NUMBER][-NUMBER]]...
	Select only these bytes
-c, --characters=[[NUMBER][-NUMBER]]...
	Select only these characters
-f, --fields=[[NUMBER][-NUMBER]]...
	Select only these fields. Also print any line that contains no delimiter character

-d, --delimiter=[STRING]
	Use STRING instead of TAB for field delimiter
-s, --only-delimited
	Do not print lines not containing delimiters
--output-delimiter=[STRING]
	Use STRING as the output delimiter. The default is to use the input delimiter
-z, --zero-terminated
	Line delimiter is ASCII NULL, not newline

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/cut)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/cut-invocation.html#cut-invocation)
