---
package: coreutils
category: command
tags:
  - cli
  - cli/utilities
  - operation
  - operation/comparison
  - operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Check file types and compare values

Runs a conditional test and returns its boolean response

## Command
```txt
test [OPTION] [EXPRESSION]

--help
	Display the help information and exit 
--version
	Output version information and exit

EXPRESSIONS
```

## Exit Status
- 0 - Expression returned true
- 1 - Expression returned false
- 2 - Error

## Links
[linux.die.net](https://linux.die.net/man/1/test)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/test-invocation.html#test-invocation)
