---
package: grep
category: command
tags:
  - linux/cmds/cli/text
  - linux/cmds/operation/filtering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] grep

> [!info] Print lines matching a pattern

Searches the named input files for lines containing a match to the given pattern and print it to the standard output by default. If no file is given in the parameters, recursively searches the working directory, and non-recursively searches read standard input

## Command
```txt
grep [OPTIONS]... [PATTERN] [PATH]...

Pattern Syntax
	-E, --extended-regexp
		Interpret the pattern as a extended regular expression
	-G, --basic-regexp
		Interpret the pattern as a basic regular expressions. This is the default
	-P, --perl-regexp
		Interpret the pattern as a Perl-compatible regular expressions
	-F, --fixed-strings
		Interpret the pattern as a fixed string

Matching Control
	-e, --regexp=[PATTERN]
		Use the given PATTERN
	-f, --file=[PATH]
		Obtain patterns from the given file, one per line. This option can be used multiple times
	-v, --invert-match
		Invert the sense of matching, to select non-matching lines
	-i, --ignore-case
		Case insensitive. Ignore case distinctions in patterns and input data
	--no-ignore-case
		Case sensitive.Do not ignore case distinctions in patterns and input data. This is the default
	-w, --word-regexp
		Select only those lines containing matches that form whole words
	-x, --line-regexp
		Select only those matches that exactly match the whole line

General Output Control
	-c, --count
		Suppress normal output and print a count of matching lines for each input file instead
	-m, --max-count=[NUMBER]
		Stop reading a file after matching the given number of lines
	-l, --files-with-matches
		Suppress normal output and print the name of each matching input file instead
	-L, --files-without-match
		Suppress normal output and print the name of each unmatching input file instead
	-o, --only-matching
		Print only the non-empty matched parts of a matching line, with each such part on a separate output line
	--color, --colour=[never|always|auto]
		Surround the non-empty matching strings, lines, context lines, file names, line numbers, byte offsets and separators with escape sequences to display them in color on the terminal
	-q, --quiet, --silent
		Do not write anything to standard output. Exit immediately with zero status if any match is found, even if an error was detected
	-s, --no-messages
		Suppress error messages about nonexistent or unreadable files

Output Line Prefix Control
	-H, --with-filename
		Print the file name for each match. This is the default when there is more than one file to search
	-h, --no-filename
		Suppress the prefixing of file names on output. This is the default when there is only one standard input to search
	--label=[PATH]
		Display input actually coming from standard input as input coming from the given file
	-n, --line-number
		Prefix each line of output with the 1-based line number within its input file
	-b, --byte-offset
		Print the 0-based byte offset within the input file before each line of output.
	-Z, --null
		Output a the ASCII NULL character instead of the character that normally follows a file name
	-T, --initial-tab
		Make sure that the first character of actual line content lies on a tab stop, so that the alignment of tabs looks normal

Context Line Control
	-A, --after-context=[NUMBER]
		Print the given number of lines of trailing context after matching lines
	-B, --before-context=[NUMBER]
		Print the given number of lines of leading context before matching lines
	-C, -[NUMBER], --context=[NUMBER]
		Print the given number of lines of output context
	--group-separator=[STRING]
		When -A, -B, or -C are in use, print the given separator instead of -- between groups of lines
	--no-group-separator
		When -A, -B, or -C are in use, do not print a separator between groups of lines

File and Directory Selection
	--binary-files=[without-match|text|binary]
		If a file's data or metadata indicate that the file contains binary data, assume that the file is of the given type
	-D, --devices=[read|skip]
		If an input file is a device, FIFO or socket, do as determined to process it
	-d, --directories=[read|skip|recurse]
		If an input file is a directory, do as determined to process it
	-R, --dereference-recursive
		Read all files under each directory recursively and follow all symbolic links
	--include=[PATTERN]
		Search only files whose base name matches the pattern GLOB
	--exclude=[PATTERN]
		Skip any command-line file with a name suffix that matches the pattern GLOB
	--exclude-dir=[PATTERN]
		Skip any command-line directory with a name suffix that matches the pattern GLOB
	--exclude-from=[PATH]
		Skip files whose base name matches any of the file-name globs read from the given file

Other Options
	--line-buffered
		Use line buffering on output. This can cause a performance penalty
	-U, --binary
		Treat the given files as binary
	-z, --null-data
		Treat input and output data as sequences of lines, each terminated by an ASCII NULL character instead of a newline

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Exit Status
- 0 - At least one line was selected
- 1 - No lines were selected
- 2 - An error has ocurred

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/grep)
[gnu.org](https://www.gnu.org/software/grep/manual/grep.html)
