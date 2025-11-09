---
category: cli
subjects:
  - binary
language: bytecode
package: nasm
tags:
  - linux/cmds/cli/development
  - linux/cmds/operation/transformation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nasm

> [!info] Portable assembler for the x86 CPU architecture

Widespread, portable, flexible and mature assembler tool with an Intel-like syntax and support for many output formats.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
nasm [OPTION]... [PATH]

MACROS

	-a
		Assemble the given input file without first applying the macro preprocessor
	-d, D VAR[=VAL]
		Pre-defines a single-line macro
	-u, -U [VAR]
		Undefines a single-line macro

OPTIMIZATION

	-O[NUMBER]
		Optimize branch offsets
			0:	No optimization
			1:	Minimal optimization
			x:	Multipass optimization (default)

INPUT

	--prefix [ARGUMENT]
		Prepend the given argument to all global or extern variables
	--postfix [ARGUMENT]
		Append the given argument to all global or extern variables

OUTPUT

	-o [PATH]
		Specifies the output file
	-e, -E
		Causes nasm to preprocess the given input file, and write the output to stdout or the out file, not assembling anything
	
	-s
		Redirect error and/or help text from stderr to stdout
	-Z [PATH]
		Redirect error messages to the pointed file
	
	-g
		Generate debug information
	-f [FORMAT]
		Specifies the output file format
	-F [FORMAT]
		Specifies the debug information format
	-X [gnu|vc]
		Specifies error reporting format
	-W[no-][VAR]
		Toggle certain classes of warning messages, in gcc-like style
-w[+-][VAR]
		Toggle certain classes of warning messages

ENCODING

	-g[FORMAT]
		Equivalent to -g -F FORMAT
	-t
		Assemble in SciTech TASM compatible mode

FILES

	-@ [PATH]
		Process options from the pointed file as if they were included on the command line
	-i, -I [PATH]
		Adds a directory to the search path for include files
	-p, -P [PATH]
		Specifies a file to be pre-included, before the main source file starts to be processed
	-l [PATH]
		Direct an assembly listing to be directed to the given file

DEPENDENCIES

	-M
		Output Makefile-style dependencies to stdout, supressing normal output
	-MF [PATH]
		Output Makefile-style dependencies to the specified file
	-MG [PATH]
		Same as -M, but assumes that missing Makefile dependencies are generated and added to dependency list without a prefix
	-MD [PATH]
		Same as a combination of -M and -MF options

	-MT [PATH]
		Override the default name of the dependency target dependency target name
	-MQ [PATH]
		The same as -MT except it tries to quote characters that have special meaning in Makefile syntax

OTHERS

	-MP
		Emit phony target

HELP

	-h
		Display the help information and exit
	-hf
		Display the help information, list valid output formats and exit
	-y
		Causes nasm to list supported debug formats
	-v
		Output version information and exit
```

## Files
```bash
/ # desc
```

## Environmental Variables
```bash
VAR=VAL # desc
```


## Exit Status
- n - status

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/netwide-assembler/nasm/)
[nasm.us](https://nasm.us/)
[nasm.us/docs](https://nasm.us/docs/)
