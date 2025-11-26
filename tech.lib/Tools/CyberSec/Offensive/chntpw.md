---
category: tool
subjects:
  - cli
  - binary
language: c
package: chntpw
os:
  - linux
tags:
  - cybersec/offensive/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] chntpw

> [!info] Utility to overwrite passwords of Windows systems

Utility to view some information and reset user passwords in a [[Windows/SAM|SAM]] user database file used by Microsoft Windows Operating System

## Favorite Uses
```sh
chntpw -i /mnt/Windows/system32/config/SAM
```

## Command
```txt
chntpw [OPTION]... [FILE]

-u [USER]
	Username or username ID (RID) to change
-l
	List all users in the SAM database and exit
-i
	Interactive menu system
-e
	Registry editor with limited capabilities
-d
	Use buffer debugger instead (hex editor)

-L
	Automatically saves the changes in the hive files without
prompting the user and log all changed filenames to /tmp/changed

-N
	Do not allocate more information, only allow the editing of existing values with same size
-E
	Do not expand the hive file (safe mode)

-v
	Print verbose information and debug messages

-h
	Display the help information and exit
```

## Files


## Environmental Variables
```bash
VAR=VAL # desc
```


## Relevant Reading
- [[]]

## External Reference
[salsa.debian.org](https://salsa.debian.org/debian/chntpw)
[pogostick.net](https://pogostick.net/~pnh/ntpasswd/)
