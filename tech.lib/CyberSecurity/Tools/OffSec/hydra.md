---
category: cli
subjects:
  - binary
language: c
package: hydra
tags:
  - cybersec/tools/offsec/exploitation/credential
  - cybersec/tools/offsec/exploitation/web
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] hydra

> [!info] Fast network logon cracker

Parallelized, modular and flexible login cracker which supports numerous protocols to attack.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
hydra [OPTION]... [TARGET] [PROTOCOL] [MODULE [OPTION]...]

-R
	Restore a previously aborted session through a hydra.restore file
-I
	Ignore an existing restore file

-4
	Prefer IPv4 addresses
-6
	Prefer IPv6 addresses
-s [PORT]
	Define the target port
-S
	Connect via SSL
-O
	Use old SSL v2 and v3

-l [USER]
	Defines a username to be used
-p [PASSWORD]
	Defines a password to be used
-L [PATH]
	Points to a username wordlist
-P [PATH]
	Points to a password wordlist 
-C [PATH]
	Colon separated "USER:PASSWORD" format

-x [MIN:MAX:CHARSET]
	Bruteforce passwords from min to max length using the presented characters
-y
	Disable use of symbols in -x bruteforce
-f
	Exit after finding valid credentials (per host)
-F
	Exit after finding valid credentials (any host)

-M [PATH]
	Points to a server list for parallel attacks
-t [NUMBER]
	Sets the ammount of connects in parallel
-u
	Inverts the behaviour of checking all passwords for each username, checking all usernames for each password
-e [n|s|r]...
	Set additional checks to be performed
		n	-	null password
		s	-	try login as pass
		r	-	try the reverse login as pass

-o [PATH]
	Write found credentials to the pointed file instead of stdout
-b [text|json|jsonv1]
	specify the format for the -o file

-U [MODULE]
	List available options for the given module
-m [OPTION]...
	Module specific options

-w [NUMBER]
	Defines the response timeout in seconds
-W [TIME]
	Defines a delay between each connection a task performs
-c [NUMBER]
	Defines the timeout in seconds per login attempt over all threads

-v
	Verbose mode
-d
	Debug mode
-V
	Show the credentials for each attempt

-h, --help
	Display the help information and exit
```

## Files


## Environmental Variables
```bash
# defines the proxy endpoint
HYDRA_PROXY=[connect|socks4|socks5]://[USER:PASSWORD@][ADDRESS]
HYDRA_PROXY_HTTP=http://[USER:PASSWORD@][ADDRESS]
# list of up to 64 proxy endpoints
HYDRA_PROXY=[PATH]
HYDRA_PROXY_HTTP=[PATH]
```

## Exit Status
- n - status

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/vanhauser-thc/thc-hydra)
[](site)
[](man)
[gnu.org](GNU)
