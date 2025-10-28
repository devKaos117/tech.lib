---
category: cli
subjects:
  - binary
language: c++
package: windows-binaries
tags:
  - cybersec/tools/offsec/post_exploit/dumping
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] windows-binaries

> [!info] A Tool For Mass Password Auditing of Windows Systems

fgdump is targetted at the security auditing community, embeding several programs within its resource to effectively extract windows credentials from running systems.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
fgdump [OPTION]...

-h [HOST]
	Specify the name of a single host to perform the dumps against
-u [USER]
	Specify the username for the remote host dumping
-p [PASS]
	Specify the password for the remote host dumping
-f [PATH]
	Reads hosts from a line-separated file
-H [PATH]
	Reads host:username:password from a line-separated file

-a
	Will not attempt to detect or stop antivirus, even if it is present
-t
	Will test for the presence of antivirus without actually running the password dumps
-k
	Keeps the pwdump/cachedump going even if antivirus is in an unknown state

-T [NUMBER]
	Runs fgdump with the specified number of parallel threads
-s
	Performs the protected storage dump

-c
	Skips the cache dump
-w
	Skips the password dump
-o
	Skips pwdump history dumps
-r
	Forgets about existing pwdump/cachedump files

-v
	Makes output more verbose. Use twice for greater effect
-l [PATH]
	Logs all output to the pointed logfile

-?
	Display the help information and exit
```

## Files
```bash
/usr/share/windows-resources/binaries/fgdump/* # Kali-linux fgdump executable files
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
[gitlab.com](https://gitlab.com/kalilinux/packages/windows-binaries)
[foofus.net](http://foofus.net/goons/fizzgig/fgdump/)
[foofus.net/usage](http://foofus.net/goons/fizzgig/fgdump/fgdump-usage.htm)
