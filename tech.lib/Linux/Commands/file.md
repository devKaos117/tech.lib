---
category: cli
subjects:
  - binary
language: c
package: POSIX
tags:
  - linux/cmds/file/inspect
  - linux/cmds/operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] POSIX

> [!info] Determine file type

Tests each argument in an attempt to classify it. There are three sets of tests, performed in this order:
- Filesystem tests: based on examining the return of a stat() system call
- Magic tests: check for files with data in particular fixed formats
- Language tests: check if the contents of the file match any known character encoding
The first test that succeeds causes the file type to be printed.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
file [OPTIONS]... [FILE]...

-k, --keep-going
	Don't  stop	 at	 the first match, keep going
-l, --list
	Shows a list of patterns and their strength sorted descending
--extension
	Print a slash-separated list of valid extensions for the file type found
-p, --preserve-date
	On systems that support utime(3) or utimes(2), attempt to preserve the access time of files analyzed, to pretend that file never read them
-s, --special-files
	Read argument files which are block or character special files, which may have peculiar consequences

--apple
	Causes the file command to output the file type and creator code of files that have the apple-style output defined
-b, --brief
	Do not prepend filenames to output lines
-d
	Prints internal debugging information to stderr.
-E
	On filesystem errors, issue an error message and exit.
-i, --mime
	Causes the file command to output mime type strings rather than the more traditional human readable ones
-n, --no-buffer
	Force stdout to be flushed after checking each file
-r, --raw
	Don't translate unprintable characters to an octal representation
-0, --print0
	Output a null character ‘\0’ after the end of the filename

-z, --uncompress
	Try to look inside compressed files
-Z, --uncompress-noreport
	Try to look inside compressed files, but report information about the contents only not the compression
-f, --files-from [PATH]
	Read the names of the given files to be examined before the argument list
-e, --exclude [apptype|ascii|encoding|tokens|cdf|compress|csv|elf|json|soft|simh|tar|text]
	Exclude the given test from the list of tests made to determine the file type
-h, --no-dereference
	Do not follow symbolic links 
-L, --dereference
	Follow symbolic links
-P, --parameter [bytes|elf_notes|elf_phnum|elf_shnum|elf_shsize|encoding|indir|name|regex]=[VALUE]
	Set various parameter limits

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/file)
