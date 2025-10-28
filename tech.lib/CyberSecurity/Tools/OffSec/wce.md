---
category: cli
subjects:
  - binary
language: NULL
package: windows-binaries
tags:
  - cybersec/tools/offsec/post_exploit/dumping
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] windows-binaries

> [!info] NTLM, Kerberos and Digest credentials dumping

Windows Credentials Editor allows for NTLM, Kerberos and Digest dumping and authentication for Windows XP, 2003, Vista, 7, 2008 and 8.

## Favorite Uses
```sh
wce -o hashes.txt
wce -w -o unhashed.txt
```

## Command
```txt
wce [OPTION]...

-l
	List logon sessions and NTLM credentials
-w
	Dump cleartext passwords stored by the digest authentication package

-r [NUMBER]
	Lists logon sessions and NTLM credentials indefinitely. Refreshes every 5 seconds or for every given number of seconds
-e
	Lists logon sessions NTLM credentials indefinitely. Refreshes every time a logon event occurs

-i [STRING]
	Specify LUID instead of use current logon session
-d [STRING]
	Delete NTLM credentials from the given logon session
-s [USER]:[DOMAIN]:[HASH(LM)]:[HASH(NTLM)]
	Changes NTLM credentials of current logon session

-K [PATH]
	Dump Kerberos tickets to file
-k [PATH]
	Read Kerberos tickets from file and insert into Windows cache

-f
	Force safe mode
-g [PASS]
	Generate LM & NT Hash
-a [ADDR]
	Use Addresses
-c [COMMAND]
	Run a command in a new session with the specified NTLM credentials

-o [PATH]
	Saves all output to the pointed file
```

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
[gitlab.com](https://gitlab.com/kalilinux/packages/wce)
[ampliasecurity.com](https://www.ampliasecurity.com/research/wcefaq.html)