---
package: coreutils
category: command
tags:
  - linux/cmds/cli/environment
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Show the environment or run a program in a modified environment

Execute a command with environment modifications. Allows to list the environment variables (blank arguments) or change their values, the working directory and the handling of signals during the execution of a command

## Command
```txt
env [OPTION]... [-] [VAR=VALUE]... [COMMAND [ARGUMENTS]...]

-i, --ignore-environment
	Start with an empty environment
-u, --unset=[VAR]
	Remove variable from the environment

-C, --chdir=[PATH]
	Change working directory to PATH
-S, --split-string=[STRING]
	Process and split S into separate arguments. used to pass multiple arguments on shebang lines

--default-signal=[STRING]
	Reset handling of STRING signal to the default
--block-signal=[STRING]
	Block delivery of STRING signal to COMMAND
--ignore-signal=[STRING]
	Set handling of STRING signals to do nothing
--list-signal-handling
	List non default signal handling to stderr

-0, --null
	End each output line with NUL, not newline
-v, --debug
	Print verbose information for each processing step

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Exit Status
Exit status of the executed command is given if ``env`` runs successfully, otherwise:

- 125 - ``env`` command failed
- 126 - Executed command cannot be invoked
- 127 - Executed command cannot be found

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/env)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/env-invocation.html#env-invocation)
