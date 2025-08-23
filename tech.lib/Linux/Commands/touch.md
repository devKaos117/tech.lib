---
package: coreutils
category: command
tags:
  - file
  - file/manage
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Create files and alter timestamps

Update the access and modification times of each file to the current time, creating them if they don't exist. An argument string of "-" is handled specially and causes touch to change the times of the file associated with standard output

## Command
```txt
touch [OPTIONS]... [PATH]...

--time=[atime|mtime]
	Change only the access or modification time
-t [TIMESTAMP]
	Use [[CC]YY]MMDDhhmm[.ss] instead of current time
-d, --date=[STRING]
	Parse the given string and use it instead of current time
-r, --reference=[PATH]
	Use the given's file time as reference instead of the current time
-c, --no-create
	Do not create files
-h, --no-dereference
	Affect each symbolic link instead of any referenced file

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/touch)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/touch-invocation.html#touch-invocation)
