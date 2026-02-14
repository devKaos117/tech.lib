---
category: cli
subjects:
  - binary
language: c
package: coreutils
os:
  - linux
tags:
  - file/manage
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] coreutils

> [!info] Remove files

## Command

```txt
rm [OPTIONS]... [PATH]...

BEHAVIOUR

	-r, --recursive
		Remove directories and their contents recursively
	-f, --force
		Ignore nonexistent files, never prompt
	
	--one-file-system
		When removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument
	--no-preserve-root
		Do not treat the root directory specially

OUTPUT

	-v, --verbose
		Explain what's being done

INTERACTION

	-i, --interactive=[never|once|always]
		Prompt before every removal, or according to the given option

HELP

	--help
		Display the help information and exit 
	--version
		Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/coreutils/coreutils)
[linux.die.net](https://linux.die.net/man/1/rm)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/rm-invocation.html#rm-invocation)
