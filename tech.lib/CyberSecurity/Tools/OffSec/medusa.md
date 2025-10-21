---
category: cli
subjects:
  - binary
language: c
package: medusa
tags:
  - cybersec/tools/offsec/exploitation/credential
  - cybersec/tools/offsec/exploitation/web
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] medusa

> [!info] Speedy, parallel, and modular, login brute-forcer

speedy, massively parallel, modular, login brute-forcer that tries to support as many remote authentication services as possible

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
command [OPTION]... [ARGUMENT]...

-Z [[h|u]NUMBER]...
	Allows basic resuming of a previous audit by describing the state. Presenting a host number indicates to bruteforce from that foward, and preceding it by another host describes its partially completition. Users follow the same structure, but must be contained inside a host specification

-h [HOST]
	Target hostname or IP address
-n [PORT]
	Specify a non-default TCP port number
-s
	Enable SSL

-u [USER]
	Defines the target username
-p [PASSWORD]
	Defines the target password
-U [PATH]	
	Reads target usernames from the given file
-P [PATH]
	Reads target passwords from the given file
-C [FILE]
	Reads target credentials from the given file in the format [HOST]:[USER]:[PASSWORD] or USER:ID:LM:NTLM::: for PwDump files. Parameters can be ommited from the file and recieved from global parameters.
-H [PATH]
	Reads target specifications from the given file 
-e [n|s]...
	Set additional checks to be performed
		n	-	null password
		s	-	try login as pass

-d
	Dump all known modules
-q
	Display module's usage information
-M [MODULE]
	Name of the module to execute
-m [PARAMETER]
	Parameter to pass to the module. This can be passed multiple times

-R [NUMBER]
	Set the number of attempted retries before giving up
-g [NUMBER]
	Set a timeout in secods for connection
-r [NUMBER]
	Set a delay in seconds between retry attempts
-c [NUMBER]
	Set a timeout in usecs that are waited during a test of established network sockets

-T [NUMBER]
	Total number of hosts to be tested concurrently
-t [NUMBER]
	Total number of logins to be tested concurrently
-L
	Parallelize logins using one username per thread instead of processing the entire username before proceeding
-f
	Stop scanning host after first valid credentials (per host)
-F
	Stop audit after first valid credentials (any host)

-b
	Suppress startup banner
-v [NUMBER]
	Defines the verbosity level
		0	-	EXIT APPLICATION
		1	-	MESSAGE WITHOUT TAG
		2	-	LOG MESSAGE WITHOUT TAG
		3	-	IMPORTANT MESSAGE
		4	-	ACCOUNT FOUND
		5	-	ACCOUNT CHECK
		6	-	GENERAL MESSAGE
-w [NUMBER]
	Defines the error debug level
		0	-	FATAL
		1	-	ALERT
		2	-	CRITICAL
		3	-	ERROR
		4	-	WARNING
		5	-	NOTICE
		6	-	INFO
		7	-	DEBUG
		8	-	DEBUG/AUDIT
		9	-	DEBUG/SERVER
		10	-	DEBUG/MODULE
-O [PATH]
File to append log information. This includes: valid credentials found, unknown errors, start and stop times of an audit, audit calling parameters

-V
	Output version information and exit
```

## Files


## Environmental Variables
```bash
VAR=VAL # desc
```


## Exit Status
- n - status

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/jmk-foofus/medusa)
[foofus.net](http://foofus.net/?page_id=51)
[jmk-foofus.github.io](https://jmk-foofus.github.io/medusa/medusa.html)