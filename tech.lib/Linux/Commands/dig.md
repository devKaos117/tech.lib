---
package: bind9
category: command
tags:
  - linux/cmds/security/offsec/osint/general
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

-h
	Display the help information and exit 
-v
	Output version information and exit
```

## Exit Status
- 0 - DNS response received, including NXDOMAIN status
- 1 - Usage error
- 8 - Couldn't open batch file
- 9 - No reply from server
- 10 - Internal error

## Relevant Reading
- [[Compendium/Protocols/DNS|DNS]]

## External Reference
[github.com](https://github.com/isc-projects/bind9)
[isc.org](https://www.isc.org/bind/)
[bind9.readthedocs.io](https://bind9.readthedocs.io/)
[manpages.debian.org](https://manpages.debian.org/bullseye/bind9-dnsutils/dig.1.en.html)
