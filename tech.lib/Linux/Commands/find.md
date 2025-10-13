---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: findutils
category: command
tags:
  - linux/cmds/file/search
  - linux/cmds/operation/filtering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] findutils

> [!info] Search for files under a directory hierarchy, recursively

Searches the directory tree rooted at each given file name by evaluating the given expression from left to right, according to the rules of precedence, until the outcome is known, at which point it moves on to the next file name.

The expression is set up by options, tests, and actions connected by operators

## Command
```txt
find [H|L|P] [OPTION]... [PATH]... [EXPRESSION]

OPTIONS

	-H
		Do not follow symbolic links, except while processing the command line arguments
	-P
		Never follow symbolic links
	-L
		Follow symbolic links
	
	-D [OPTIONS]
		Print diagnostic information
	-O[1-3]
		Enables query optimisation, reordering tests to speed up execution while preserving the overall effect
	
	--help
		display the help information and exit
	--version
		output version information and exit
		
EXPRESSION OPTIONS

	-daystart
		Measure times from the beginning of today rather than from 24 hours ago
	-regextype [emacs|posix-awk|posix-basic|posix-egrep|posix-extended]
		Changes the regular expression's syntax tests
	-warn, -nowarn
		Turn warning messages on and off

	-d, -depth
		Process each directory's contents before the directory itself
	-ignore_readdir_race, -noignore_readdir_race
		Enable or disable emitting of an error message when it fails to stat a file
	-maxdepth, -mindepth
		Define the minimum and maximum limit level of of directories below the command line arguments to descend at
	-mount
		Don't descend directories on other filesystems
	-noleaf
		Do not optimize by assuming that directories contain 2 fewer subdirectories than their hard link count (needed for non Unix-like filesystems)

EXPRESSION TESTS
			
	(-n < n < +n | n = [0-9])
	
	-[a|c|m]min n
		File was last [accessed|changed|modified] n minutes ago
	-[a|c|m]time n
		File was last [accessed|changed|modified] n days ago
	
	-uid n
		File's numeric user id matches n
	-user [UNAME|UID]
		File is owned by user 
	-gid n
		File's numeric group id matches n
	-group [GNAME|GID]
		File belongs to group
	-size n[c|w|b|k|M|G]
		File's space use matches n (rounding up)
		{c: bytes, w: two-byte words, b: 512-byte blocks, k: KiB, M: MiB, G: GiB}
	-type, -xtype [b|c|d|p|f|l|s|D]
		Matches file's type. xtype checks the file that type doesn't (refering to link's options -H, -P and -L)
	-perm [-|/][MODE]
		File permission bits are exactly the given one. May be in octal or string
	-newer, -[a|c]newer [PATH]
		File was [modified|accessed|changed] more recently than the given reference
	-newer[TIMESTAMP]{2} [REFERENCE]
		Compares the timestamp of the current file with the given reference
	-used n
		File was last accessed n days after its status was last changed
	-fstype [TYPE]
		File is on a filesystem of the given type
	
	-true
		Return true
	-false
		Return false
	-empty
		File is empty and is either a regular file or a directory
	-readable
		Matches files which are readable
	-writable
		Matches files which are writable
	-executable
		Matches files which are executable and directories which are searchable
	-nouser
		No user corresponds to file's numeric user ID
	-nogroup
		No group corresponds to file's numeric group ID
	
	-regex, -iregex [PATTERN]
		File name matches the given regular expression. iregex is case insensitive
	-name, -[i|l|il]name [PATTERN]
		Base of file name matches the given shell pattern. iname is case insensitive, lname examine the contents of symbolic links
	-path, -ipath [PATTERN]
		File name matches the given shell pattern. ipath is case insensitive
	-context [PATTERN]
		Security context of the file matches the given glob pattern
	
	-inum n
		File has inode number n
	-samefile [NAME]
		File refers to the same inode as the given one
	-links n
		File has n links
			
EXPRESSION OPERATORS

	( )
		Force presedence
	!, -not
		Inverse the boolean value
	-and
		Boolean values joined through the "and" logical operation
	-o, -or
		Boolean values joined through the "or" logical operation

ACTIONS

	-delete
		Delete files. True if removal succeeded. If the removal failed, an error message is issued
	-exec [COMMAND]
		Execute command
	-execdir [COMMAND]
		Execute command from the subdirectory containing the matched file
	-ok [COMMAND]
		Ask the user first, then execute the command
	-okdir [COMMAND]
		Ask the user first, then execute the command from the subdirectory containing the matched file
	-print
		Print the full file name on the standard output, followed by a newline
	-ls
		List current file in ls -dils format on standard output
	-fls [PATH]
		Print current file listing in ls -dils format into the given file
	-fprint [PATH]
		Print the full file name into the given file
	-prune
		If the file is a directory, do not descend into it
	-quit
		Exit immediately, leaving no child running
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/find)
