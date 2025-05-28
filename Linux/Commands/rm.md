---
package: coreutils
category: command
tags:
  - files
  - operation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Remove files

## Command
```txt
rm [OPTIONS]... [PATH]...

-r, --recursive
	Remove directories and their contents recursively
-f, --force
	Ignore nonexistent files, never prompt
-i, --interactive=[never|once|always]
	Prompt before every removal, or according to the given option

--one-file-system
	When removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument
--no-preserve-root
	Do not treat the root directory specially
-v, --verbose
	Explain what's being done

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/rm)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/rm-invocation.html#rm-invocation)
