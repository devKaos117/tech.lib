---
category: cli
subjects:
  - command
package: whois
tags:
  - cybersec/tools/offsec/osint/general
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] whois

> [!info] Client for the whois directory service

Aimed at DNS address specification, it searches for an object in a RFC 3912 database.

## Command
```txt
whois [OPTION]... [HOST] [OBJECT]

-a
	Also search all the mirrored databases
-x
	Search for only exact match on network address prefix
-d
	Return the reverse DNS delegation object too
-R
	Disable following referrals and force showing the object from the local copy in the server
-s [ARGUMENT]...
	Request the server to search for objects mirrored from the given sources

-B
	Disable objects filtering, showing the e-mail addresses
-G
	Disable grouping of associated objects.
-r
	Disable recursive lookups for contact information
-q [KEYWORD]
	Return information about the server

-i [ATTR]...
	Inverse-search objects having associated attributes
-l
	Return the one level less specific object
-L
	Return all levels of less specific objects
-m
	Return all one level more specific objects
-M
	Return all levels of more specific objects

-v [ARGUMENT]
	Return the verbose template for a object of the given type
-t [ARGUMENT]
	Return the template for a object of the given type
-T [ARGUMENT]...
	Restrict the search to objects of the given types

-K
    Return primary key attributes only
-b
	Return brief IP address ranges with abuse contact
-c
	Return the smallest IP address range with a reference to an irt object

--help
	Display the help information and exit 
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/rfc1036/whois)
[man.archlinux.org](https://man.archlinux.org/man/extra/whois/whois.1.en)
