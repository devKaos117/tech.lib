---
category: tool
subjects:
  - cli
  - binary
language: c
package: bind9
os:
  - linux
tags:
  - cybersec/offensive/osint/general
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] bind9

> [!info] Simple utility for performing DNS lookups

Simple utility for performing DNS lookups, normally used to convert names to IP addresses and vice versa.

## Favorite Uses
```sh
host -v -a -l URL
```

## Command
```txt
host [OPTION]... [HOST] [SERVER]...

CONNECTION

	-4
		Specifies the use of IPv4
	-6
		Specifies the use of IPv6
	-T
		Specify the use of TCP
	-U
		Specify the use of UDP
	-p [PORT]
		This option specifies the port to query on the server

	-R [NUMBER]
		Specifies the number of retries for UDP queries
	-s
		Tells named not to send the query to the next nameserver if any server responds with a SERVFAIL response
	-w
		Sets the query timeout to the maximum possible
	-W [NUMBER]
		Sets the length of the wait timeout in seconds

QUERY

	-l
		List the zone, performing a zone transfer of zone name and printing out the NS, PTR, and address records (A/AAAA)
	-r
		Specifies a non-recursive query, clearing the RD (recursion desired) bit in the query
	-c [STRING]
		Specifies the query class, which can be used to lookup HS (Hesiod) or CH (Chaosnet) class resource records. The default class is IN (Internet)
	-t [STRING]
		Specifies the query type. The type argument can be any recognized query type
	-N [NUMBER]
		Specifies the number of dots that have to be in name for it to be considered absolute
	-C
		Indicates that named should check consistency, effectively querying the SOA records for zone name from all the listed authoritative name servers for that zone

	-a
		Equivalent to -v -t ANY
	-A
		Equivalent to -a, except that RRSIG, NSEC, and NSEC3 records are omitted from the output

OUTPUT

	-v, -d
		Prints debugging traces (verbose output)
	-m [record|usage|trace]...
		Sets memory usage debugging

HELP

	-V
		Output version information and exit
```

## Files
```bash
/etc/resolv.conf # 
```

## Relevant Reading
- [[DNS]]

## External Reference
[github.com](https://github.com/isc-projects/bind9)
[isc.org](https://www.isc.org/bind/)
[bind9.readthedocs.io](https://bind9.readthedocs.io/)
