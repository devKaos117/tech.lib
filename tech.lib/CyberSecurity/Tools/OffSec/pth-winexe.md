---
category: cli
subjects:
  - binary
language: c
package: passing-the-hash
tags:
  - cybersec/tools/offsec/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] passing-the-hash

> [!info] Pass-the-hash utility targeting Windows systems

Modified version of WinEXE, designed to perform a [[CyberSecurity/Theory/PTH|pass-the-hash]] attack agains windows hosts.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
pth-winexe [OPTION]... [HOST] [COMMAND]

-U, --user=[DOMAIN\][USER]%[PASS]
	Set the network username
-N, --no-pass
	Don't ask for a password
--password=[STRING]
	Specify the password
--pw-nt-hash
	The supplied password is the NT hash
-A, --authentication-file=[PATH]
	Get the credentials from a file

-P, --machine-pass
	Use stored machine account password
--simple-bind-dn=[STRING]
	DN to use for a simple bind
--use-winbind-ccache
	Use the winbind ccache for authentication
--client-protection=[sign|encrypt|off]
	Configure used protection for client connections

--use-kerberos=[desired|required|off]
	Use Kerberos authentication
--use-krb5-ccache=[PATH]
	Credentials cache location for Kerberos

--uninstall
	Uninstall winexe service after remote execution
--reinstall
	Reinstall winexe service before remote execution
--runas=[DOMAIN\][USER]%[PASS]
	Run as the given user
--runas-file=[FILE]
	Run as user options defined in a file
--interactive=[0|1]
	Toggle desktop interaction
--ostype=0|1|2
	Determines which version of service will be installed
		0 - 32-bit
		1 - 64-bit
		2 - winexe will decide

-s, --configfile=[PATH]
	Use alternative configuration file
--option=[VAR]=[VAL]
	Set smb.conf option from command line

-l, --log-basename=[PATH]
	Basename for log/debug files
-d, --debuglevel=[LEVEL]
	Set debug level
--debug-stdout
	Send debug output to standard output
--leak-report
	enable talloc leak reporting on exit
--leak-report-full
	enable full talloc leak reporting on exit

-h, --help, --usage
	Display the help information and exit
-V, --version
	Output version information and exit
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
[gitlab.com](https://gitlab.com/kalilinux/packages/passing-the-hash)
[passing-the-hash.blogspot.com](https://passing-the-hash.blogspot.com/)
[](man)
[gnu.org](GNU)
