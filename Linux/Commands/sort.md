---
package: coreutils
category: command
tags:
  - text
  - utils
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Sort lines of text files

Sort, merges or compares all lines from the given input and writes it to standard output

## Favorite Uses
```sh
sort -fu STRING
sort -t : -k 3n /etc/passwd
sort -t : -k 3n -k 4g
```

## Command
```txt
sort [OPTION]... [PATH]...

-u, --unique
	Output only the first of an equal run
-z, --zero-terminated
	Line delimiter is ASCII NULL, not newline
-t, --field-separator=[STRING]
	Use STRING instead of non-blank to blank transition
-i, --ignore-nonprinting
	Consider only printable characters
-f, --ignore-case
	Fold lower case to upper case characters

--sort=[numeric|general-numeric|human-numeric|random|version|month]
	Define sorting criteria
-r, --reverse
	Reverse the result of comparisons
-s, --stable
	Stabilize sort by disabling last-resort comparison
-k, --key=[NUMBER[.NUMBER][n|g|h|r|v|m]]
	Sort via the given field, up to the given character in the set sorting criteria

-o, --output=[PATH]
	Write the result to the FILE instead of standard output
--debug
	Annotate the part of the line used to sort, and warn about questionable usage to standard error

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/sort)
[www.gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/sort-invocation.html#sort-invocation)
