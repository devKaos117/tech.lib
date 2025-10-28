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
> [!warning] Superseeded by [[CyberSecurity/Tools/OffSec/fgdump]]

> [!package] windows-binaries

> [!info] Résumé

This program is able to extract [[Windows/NTLM|NTLM]] and [[Windows/LanMan|LanMan]] [[CyberSecurity/Cryptography/hashes|hashes]] from a Windows target, regardless of whether [[Windows/Syskey|Syskey]] is enabled. It is also capable of displaying password histories if they are available. It outputs the data in L0phtcrack-compatible form.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
pwdump [OPTION]... [HOST]

-u [USER]
	Specifies the user name used to connect to the target
-p [PASS]
	Specifies the password used to connect to the target
-s [STRING]
	Specifies the share to be used on the target, rather than searching for one

-n
	Skips password histories
-x
	Targets a 64-bit host

-o [PATH]
	Specifies a file to which to write the output

-h
	Display the help information and exit
```

## Files
```bash
/ # desc
```

## Environmental Variables
```bash
VAR=VAL # desc
```

## Relevant Reading
- [[]]

## External Reference
[github.com](github)
[foofus.net](http://foofus.net/goons/fizzgig/pwdump/)
