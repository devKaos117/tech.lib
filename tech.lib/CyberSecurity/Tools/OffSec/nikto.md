---
category: cli
subjects:
  - command
package: nikto
tags:
  - cybersec/tools/offsec/analysis/web
  - cybersec/tools/offsec/reconnaissance/enumerating
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nikto

> [!info] Web server scanner

Nikto is a pluggable web server and CGI scanner written in Perl, using rfp's LibWhisker to perform fast security or informational checks.

## Command
```txt
nikto [OPTION]... [HOST]...

-config [PATH]
	Specify an alternative config file to use
-O, -option [VAR=VAL]...
	Over-ride an option in nikto.conf
-usecookies
	Use cookies from responses in future requests

-host, -url [HOST]...
	Host to target
-root [PATH]
	Prepend the value specified to the beginning of every request
-port [PORT]...
	TCP port(s) to target
-ipv4
	IPv4 Only
-ipv6
	IPv6 Only
-check6
	Check if IPv6 is working (connects to ipv6.google.com or value set in nikto.conf)
-ssl [PORT]...
	Only test SSL on the ports specified
-followredirects
	Follow 3xx redirects to new location
-useproxy [PROTOCOL]://[HOST]:[PORT]
	Use the provided proxy

-id [ID:PASSWORD|REALM]
	ID and password to use for host Basic host authentication
-key [PATH]
	Client certificate key file
-RSAcert [PATH]
	Client certificate file

-plugins [ARGUMENT|all|none]...
	Select which plugins will be run on the specified targets
-list-plugins
	List all plugins that Nikto can run against targets
-update
	Update the plugins and databases directly from cirt.net
-C, -cgidirs [PATH|none|all]
	Scan the provided CGI directories. If this is option is not specified, all CGI directories listed in config.txt will be tested.
-T, -tuning [[x][0-9|a|b|c]]...
	Control the test that Nikto will use against a target
		1	Interesting File / Seen in logs
		2	Misconfiguration / Default File
		3	Information Disclosure
		4	Injection (XSS/Script/HTML)
		5	Remote File Retrieval - Inside Web Root
		6	Denial of Service
		7	Remote File Retrieval - Server Wide
		8	Command Execution / Remote Shell
		9	SQL Injection
		0	File Upload
		a	Authentication Bypass
		b	Software Identification
		c	Remote Source Inclusion
		d	WebService
		e	Administrative Console
		x	Reverse Tuning Options

-evasion [1-8]...
	Specify the LibWhisker IDS evasion technique to use
		1	Random URI encoding (non-UTF8)
		2	Directory self-reference (/./)
		3	Premature URL ending
		4	Prepend long random string
		5	Fake parameter
		6	TAB as request spacer
		7	Change the case of the URL
		8	Use Windows directory separator (\)
		A	Use a carriage return (0x0d) as a request spacer
		B	Use binary value 0x0b as a request spacer
-vhost
	Specify the Host header to be sent to the target
-useragent [STRING]
	Over-rides the default user agent
-P, -pause [NUMBER]
	Seconds to delay between each test
-S, -single
	Perform a single request to a target server

-timeout [TIME]
	Seconds to wait before timing out a request
-maxtime [TIME]
	Maximum testing time per host
-until [TIME]
	Run until the specified time or duration

-mutate [1-6]...
	Specify mutation technique
		1	Test all files with all root directories
		2	Guess for password file names
		3	Enumerate user names via Apache (/~user type requests)
		4	Enumerate user names via cgiwrap (/cgi-bin/cgiwrap/~user type requests)
		5	Attempt to brute force sub-domain names, assume that the host name is the parent domain
		6	Attempt to guess directory names from the supplied dictionary file
-mutate-options [ARGUMENT]
	Provide extra information for mutates

-dbcheck
	Check the scan databases for syntax errors
-Userdbs [all|tests]
	Load only user databases

-404code [HTTP_CODE]...
	Ignore these HTTP codes as negative responses
-404string [PATTERN]
	Ignore this string in response body content as negative response
-no404
	Disable 404 checking
-nolookup
	Do not perform name lookups on IP addresses
-nossl
	Do not use SSL to connect to the server

-output [PATH]
	Write output to the file specified
-F, -format [csv|json|htm|nbe|sql|txt|xml]
	Defines the format for the -output option
-Save [PATH]
	Save positive responses to the given directory
-noslash
	Strip final trailing slash from URL
-D, -display [1-4|D|E|P|V]...
	Control the output that Nikto shows, with each number displaying a different information
		1	Show redirects
		2	Show cookies received
		3	Show all 200/OK responses
		4	Show URLs which require authentication
		D	Debug output
		E	Display all HTTP errors
		P	Print progress to STDOUT
		S	Scrub output of IPs and hostnames
		V	Verbose output

-ask [yes|no|auto]
	Whether to ask about submitting updates
-nointeractive
	Disables interactive features

-H, -help
	Display the help information and exit 
-V, -version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/sullo/nikto)
[cirt.net](https://cirt.net/)
[github.com/nikto/wiki](https://github.com/sullo/nikto/wiki)
