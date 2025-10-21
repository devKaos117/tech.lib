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

	+qid=[NUMBER]
		Specifies the query ID to use when sending queries
	+ndots=[NUMBER]
		Sets the number of dots that must appear in name for it to be considered absolute
	+split=W
		Splits long hex or base64 formatted fields in resource records into chunks of the nearest multiple of 4 for the provided number of characters
	+padding=[NUMBER]
		Pads the size of the query packet using the EDNS Padding option to blocks of value bytes
	+bufsize=[0-65535]
		Sets the UDP message buffer size (in bytes) advertised using EDNS0
	
	+timeout=[NUMBER]
		Sets the timeout for a query to the provided amount of seconds
	+tries=[NUMBER]
		Sets the number of times to try UDP and TCP queries to server
	+retry=[NUMBER]
		Sets the number of times to retry UDP and TCP queries to server
	
	+[no]cookie=[DATA]
		Sends a COOKIE EDNS option, with an optional value
	+[no]fail
		Indicates that named should try the next server if a SERVFAIL is received
	+[no]badcookie
		Retries the lookup with a new server cookie if a BADCOOKIE response is received
	+[no]fuzztime=[POSIX_TIME]
		Allows the signing time to be specified when generating signed messages
	+[no]nssearch
		Attempts to find the authoritative name servers for the zone containing the name being looked up, and display the SOA record that each name server has for the zone
	
	+domain=[STRING]
		Sets the search list to contain the single domain name (as specified in a domain directive), and enables search list processing (similar to +search)
	+[no]search, +[no]defname
		Uses the search list defined by the searchlist or domain directive in resolv.conf, if any
	+[no]dns64prefix
		Lookup IPV4ONLY.ARPA AAAA and print any DNS64 prefixes found
	+[no]idnin
		Enables IDN domain names processing on input
	+[no]opcode=[VAL]
		Sets (restores) the DNS message opcode to the specified value
	
	+[no]tcp
		Use TCP when querying name servers
	+[no]showsearch
		Performs a search showing intermediate results
	+[no]keepopen
		Keeps the TCP socket open between queries
	+[no]ignore
		Ignores truncation in UDP responses instead of retrying with TCP
	
	+[no]ednsnegotiation
		Enables EDNS version negotiation
	+[no]edns=[0-255]
		Specifies the EDNS version to query with
	+[no]expire
		Sends an EDNS Expire option
	+[no]keepalive
		Sends an EDNS Keepalive option
	+[no]nsid
		Includes an EDNS name server ID request when sending a query
	+[no]ednsopt=code[HEX]
		Specifies the EDNS option with code point code and an optional payload of value as a hexadecimal string
	+[no]ednsflags=[NUMBER|HEX|OCTAL]
		Sets the must-be-zero EDNS flags bits (Z bits) to the specified value
	
	+[no]trace
		Traces the delegation path from the root name servers for the name being looked up
	+[no]subnet=[SUBNET|SUBNET-SIZE]
		Sends an EDNS CLIENT-SUBNET option with the specified IP address or network prefix
	+[no]header-only
		Sends a query with a DNS header without a question section
	+[no]https[=PATH]
		Use DNS over HTTPS (DoH) when querying name servers
	+[no]https-get[=PATH]
		Similar to +https, except that the HTTP GET request mode is used when sending the query
	+[no]http-plain[=PATH]
		Similar to +https, except that HTTP queries will be sent over a non-encrypted channel
	+[no]http-plain-get[=PATH]
		Similar to +http-plain, except that the HTTP request mode is GET
	
	+[no]tls
		Use DNS over TLS (DoT) when querying name servers
	+[no]tls-ca[=PATH]
		Enables remote server TLS certificate validation for DNS transports
	+[no]tls-certfile=[PATH]
		Points to the certificate chain PEM file for the DNS transports client authentication
	+[no]tls-keyfile=[PATH]
		Points to the private key PEM file for the DNS transports client authentication
	+[no]tls-hostname=[HOST]
		use the provided hostname during remote server TLS certificate verification
	
	+[no]all
		Sets all display flags
	+[no]aaflag
		Sets the aa flag in the query
	+[no]aaonly
		Only sets the aa flag in the query
	+[no]adflag
		Sets the AD (authentic data) bit in the query
	+[no]cd, +[no]cdflag
		Sets the CD (checking disabled) bit in the query
	+[no]co, +[no]coflag
		Sets the CO (Compact denial of existence Ok) EDNS bit in the query
	+[no]do, +[no]dnssec
		Requests that DNSSEC records be sent by setting the DNSSEC OK (DO) bit in the OPT record in the additional section of the query
	+[no]raflag
		Sets the RA (Recursion Available) bit in the query
	+[no]recurse
		Sets the RD (recursion desired) bit in the query
	+[no]tcflag
		Sets the TC (TrunCation) bit in the query
	+[no]zflag
		Sets the last unassigned DNS header flag in a DNS query
	
	+[no]stats
		Enables the printing of statistics
	+[no]ttlid
		Displays the TTL when printing the record
	+[no]qr
		Toggles the display of the query message as it is sent
	+[no]rrcomments
		Display the per-record comments in the output
	+[no]answer
		Displays the answer section of a reply
	+[no]additional
		Displays the additional section of a reply
	+[no]besteffort
		Attempts to display the contents of messages which are malformed
	+[no]authority
		Displays the authority section of a reply. The default is to display it
	+[no]class
		Displays the CLASS when printing the record
	+[no]comments
		Displays some comment lines in the output, with information about the packet header and OPT pseudosection, and the names of the response section
	+[no]crypto
		Displays the cryptographic fields in DNSSEC records
	+[no]showbadcookie
		Display the message containing the BADCOOKIE rcode before retrying the request
	+[no]question
		Display the question section of a query when an answer is returned
	+[no]multiline
		Prints records (as SOA records) in a verbose multi-line format with human-readable comments
	+[no]onesoa
		Prints only the starting SOA record when performing an AXFR
	+[no]cmd
		Enables the printing of the initial comment in the output, identifying the version of dig and the query options that have been applied
	+[no]identify
		Shows the IP address and port number that supplied the answer, when the +short option is enabled
	
	+[no]short
		Provide brief answers
	+[no]yaml
		Prints the responses in a detailed YAML format
	+[no]ttlunits
		Displays the TTL in friendly human-readable time units
	+[no]idnout
		Enables puny code converting on output
	+[no]unknownformat
		Prints all RDATA in unknown RR type presentation format (RFC 3597)
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
