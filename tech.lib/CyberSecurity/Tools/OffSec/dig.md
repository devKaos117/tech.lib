---
category: cli
subjects:
  - binary
language: c
package: bind9
tags:
  - cybersec/tools/offsec/osint/general
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] bind9

> [!info] DNS lookup utility

Flexible tool for interrogating DNS name servers. The domain information groper performs DNS lookups and displays the answers that are returned from the name servers that were queried.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
dig [HOST] [OPTION]... [QUERY]

OPTIONS

	-4
		Indicates that only IPv4 should be used
	-6
		Indicates that only IPv6 should be used
	-h, --host=[HOST]
		Connect to the given host
	-p, --port=[PORT]
		Connect to the given port
	
	-x [ADDRESS]
		Sets simplified reverse lookups, for mapping addresses to names
	-f [PATH]
		Sets batch mode, in which dig reads a list of lookup requests to process from the given file
	-m
		Enables memory usage debugging
	-r
		Ignore the options from ${HOME}/.digrc
	
	-k [PATH]
		Sign queries using TSIG or SIG using a key read from the given file
	-y [hmac:][KEY]:SECRET
		Signs queries using TSIG with the given key algorithm, keyname and secret
	
	-t [QUERY|TYPE[NUMBER]]
		This option indicates the resource record type to query, which can be any valid query type
	-c [IN|HS|CH]
		Sets the query class
	-u
		Provide query times in microseconds instead of milliseconds
	-q [STRING]
		Specifies the domain name to query
	-b [ADDRESS]
		Sets the source IP address and port of the query
	-p [PORT]
		Sends the query to a non-standard port on the server, instead of the default 53
	
	-I
		First query whois.iana.org and then follow its referral to the whois server authoritative for that request
	-g [SOURCE]:[FIRST]-[LAST]
		Search updates from SOURCE database between FIRST and LAST update serial number
	--no-recursion
		Disable recursion from registry to registrar servers
	
	-H
		Do not display the legal disclaimers
	--verbose
		Increase verbosity

	-h
		Display the help information and exit 
	-v
		Output version information and exit

QUERY OPTIONS


```

## Exit Status
- 0 - DNS response received, including NXDOMAIN status
- 1 - Usage error
- 8 - Couldn't open batch file
- 9 - No reply from server
- 10 - Internal error

## Relevant Reading
- [[Networks/DNS|DNS]]

## External Reference
[github.com](https://github.com/isc-projects/bind9)
[isc.org](https://www.isc.org/bind/)
[bind9.readthedocs.io](https://bind9.readthedocs.io/)
[manpages.debian.org](https://manpages.debian.org/bullseye/bind9-dnsutils/dig.1.en.html)
