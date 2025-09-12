---
package: bat
category: command
tags:
  - file
  - file/read
  - cli
  - cli/text
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] bat

> [!info] cat clone with syntax highlighting and git integration

Prints the syntax-highlighted content of a collection of files to the terminal. If no file is specified, it reads from standard input. Batcat supports numerous programming and markup languages, and it also communicates with [[git]] to show modifications with respect to it's index

## Command
```txt
batcat [OPTIONS]... [FILE]...

-A, --show-all
	Show non-printable characters
--nonprintable-notation [caret|unicode]
	Specify how to display non-printable characters when using --show-all

-l, --language [FILE_EXTENSION|LANGUAGE_NAME]
	Explicitly set the language for syntax highlighting
-L, --list-languages
	Display a list of supported languages for syntax highlighting
-H, --highlight-line [MIN]{0,}:[+|-][MAX]{0,}
	Highlight the specified line ranges with a different background color
--theme [STRING]
	Set the theme for syntax highlighting
--list-themes
	Display a list of supported themes for syntax highlighting
-m, --map-syntax [PATTERN]:[SYNTXA-NAME]
	Map a glob pattern to an existing syntax name
--file-name [STRING]
	Specify the name to display for a file. The provided name is also used for syntax highlighting

--style [default|full|auto|plain|never|changes|header|header-filename|header-filesize|grid|rule|numbers|snip]
	Configure which elements to display in addition to the file contents. The argument is a comma-separated list of components to display or a pre-defined style
--decorations [auto|never|always]
	Specify when to use the decorations that have been specified via --style
--color [auto|never|always]
	Specify when to use colored output
--italic-text [never|always]
	Specify when to use ANSI sequences for italic text in the output

-r, --line-range [MIN]{0,}:[+|-][MAX]{0,}
	Print the specified range of lines for each file
--paging [auto|never|always]
	Specify when to use the pager
--pager [COMMAND]
	Determine which pager is used. The default pager is less
--wrap [auto|never|always]
	Specify the text-wrapping mode
--terminal-width [+|-][NUMBER]
	Explicitly set the width of the terminal instead of determining it automatically
--tabs [NUMBER]
	Set the tab width in spaces. Use a width of 0 to pass tabs through directly

-d, --diff
	Only show lines that have been added/removed/modified with respect to the Git index
--diff-context [NUMBER]
	Include N lines of context around added/removed/modified lines when using --diff

--config-file
	Get the default path for your batcat configuration file
--generate-config-file
	Generate a default configuration file
cache
	Modify the syntax-definition and theme cache

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[github.com](https://github.com/sharkdp/bat)
