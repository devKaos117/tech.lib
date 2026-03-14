---
category: tool
subjects:
  - cli
  - binary
language: c
package: windows-binaries
os:
  - linux
  - windows
tags:
  - cybersec/offensive/post_exploit/dumping
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] windows-binaries

> [!info] Extract plaintexts passwords and kerberos tickets from memory

Mimikatz uses admin rights on Windows to extract plaintexts passwords, hash, PIN code and kerberos tickets of currently logged in users from memory.
Needs [_SeDebugPrivilege_](https://devblogs.microsoft.com/oldnewthing/20080314-00/?p=23113) access right to extract passwords
Needs [_SeImpersonatePrivilege_](https://docs.microsoft.com/en-us/troubleshoot/windows-server/windows-security/seimpersonateprivilege-secreateglobalprivilege) to perform token elevation

## Favorite Uses

```sh
command options arguments
```

## Command
### Options

```txt
command [OPTION]... [ARGUMENT]...

CONNECTION
	PROTOCOL
	ADDRESSING
	AUTHENTICATION
OPTIMIZATION
	PARALLELISM
	TIME
	RESOURCES
MODE
BEHAVIOUR
INPUT
	SOURCE
	FORMAT
	FILTER
OUTPUT
	DESTINATION
	FORMAT
	FILTER
	VERBOSITY
CONFIGURATION
	FILE
	ENVIRONMENT
MODULES
	MANAGING
	USING
INTERACTION
	INTERFACE
	CONTROL
OTHERS
HELP

	-h, --help
		Display the help information and exit
	-v, --version
		Output version information and exit
```

### Actions

```txt
command [OPTION]... [ARGUMENT]...

MANAGEMENT
	FILES

	SESSION

NAVIGATION
	MOVEMENT

	QUERYING

MANIPULATION
	EXECUTION

	CONTENT

CONFIGURATION
	ENVIORNMENT

	TOOLS

HELP
```

## Modules
- **privilege**
- **token**
	- `token::elevate` elevate privileges from Administrator to SYSTEM
- **lsadump**
	- `lsadump::sam` extract NTLM hashes from the SAM database
- **sekurlsa**

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
[github.com](https://github.com/gentilkiwi/mimikatz)
[blog.gentilkiwi.com](https://blog.gentilkiwi.com/mimikatz)
[github.com/wiki](https://github.com/gentilkiwi/mimikatz/wiki)
