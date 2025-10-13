---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: util-linux-core
category: command
tags:
  - linux/cmds/file/read
  - linux/cmds/cli/text
---

`$= dv.el('span',dv.current().file.mtime)`
> [!warning] Superseeded by [[less]]

> [!package] util-linux-core

> [!info] File paginator

filter for paging through text one screenful at a time

## Command
```txt
more [OPTION]... [PATH]

-d, --silent
	Prompt with "[Press space to continue, 'q' to quit.]", and display "[Press 'h' for instructions.]" instead of ringing the bell when an illegal key is pressed
-e, --exit-on-eof
	Exit on End-Of-File

-p, --print-over
	Do not scroll. Instead, clear the whole screen and then display the text
-c, --clean-print
	Do not scroll. Instead, paint each screen from the top, clearing the remainder of each line as it is displayed
-s, --squeeze
	Squeeze multiple blank lines into one

-n, --lines [NUMBER]
	Specify the number of lines per screenful
-f, --no-pause
	Count logical lines, rather than screen lines
-l, --logical
	Do not pause after any line containing a ^L (form feed)
+[NUMBER]
	Start displaying each file at line NUMBER
+/[STRING]
	The STRING to be searched in each file before starting to display it

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/more)
