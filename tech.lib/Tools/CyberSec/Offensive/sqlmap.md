---
category: tool
subjects:
  - cli
  - script
language: python
package: sqlmap
os:
  - linux
tags:
  - cybersec/offensive/exploitation/web
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] sqlmap

> [!info] Automatic SQLi and DB takeover tool

Automation for the process of detecting and exploiting SQL injection flaws and taking over of database servers. It provides a custom detection engine, many niche features and a broad range of switches, supporting five different SQL injection types:
- Boolean-based blind
- Error-based
- Union query-based
- Stacked queries
- Time-based blind
- Inline queries

## Favorite Uses

```sh
command options arguments
```

## Command

```txt
sqlmap [OPTION]... [ARGUMENT]...

CONNECTION
	PROTOCOL
		--force-ssl
			Force the usage of SSL/TLS

		--proxy=[URL]
			Use the given proxy
		--proxy-cred=[USR:PWD]
			Provide proxy credentials
		--proxy-file=[PATH]
			Load proxy list from a file
		--proxy-freq=[NUMBER]
			Specify the amount of request before rotating the proxy
		--ignore-proxy
			Ignore system default proxy settings

		--tor
			Use the TOR network
		--tor-port=[PORT]
			Specify the port for TOR
		--tor-type=[PROTOCOL]
			Specify TOR proxy protocol
		--check-tor
			Check to see if TOR working properly

	ADDRESSING
		-u, --url=[URL]
			Provide the target URL
		--web-root=[PATH]
			Specify the web server root directory
		-d [URL]
			Provide a connection string for direct database connection

	AUTHENTICATION
		--auth-type=[basic|digest|ntlm|pki]
			Specify the HTTP authentication type
		--auth-cred=[USR:PWD]
			Provide HTTP authentication credentials
		--auth-file=[PATH]
			Load HTTP authentication PEM key file

OPTIMIZATION
	GENERAL
		-o
			Turn on all optimization switches
		--test-filter=[PATTERN]
			Enable tests by matching keywords
		--test-skip=[PATTERN]
			Skip tests by matching keywords

	PARALLELISM
		--threads=[MAX]
			Specify the max number of concurrent threads

	TIME
		--delay=[NUMBER]
			Specify a delay between each request in seconds
		--timeout=[NUMBER]
			Specify the connection timeout in seconds
		--retries=[NUMBER]
			Specify the amount of retries for connection timeouts

	RESOURCES
		--predict-output
			Predict common queries output
		--keep-alive
			Use persistent connections
		--null-connection
			Retrieve page length without actual HTTP response body
		--check-internet
			Check Internet connection before assessing the target
		--unstable
			Adjust options for unstable connections

MODE
	--smart
		Perform thorough tests only if positive heuristic(s)
	--technique=[B|E|U|S|T|Q]...
		Specify the SQL injection techniques to use
			B	-	Boolean-based blind
			E	-	Error-based
			U	-	Union query-based
			S	-	Stacked queries
			T	-	Time-based blind
			Q	-	Inline queries
	--level=[1-5]
		Specify the level of the tests to perform, increasing the number of payloads and boundaries
	--risk=[1-3]
		Specify the risk of the tests to perform, increasing the probability of damage

BEHAVIOUR
	HTTP
		-r [PATH]
			Load the HTTP request from a file
		--method=[METHOD]
			Specify an HTTP method

		-H, --header [VAR:VAL]
			Provide an additional header
		--headers=[VAR:VAL]...
			Provide additional headers
		--host=[STRING]
			Provide the Host header value
		--referer=[STRING]
			Provide the Referer header value
		-A, --user [STRING]
			Provide the User-Agent
		--random-agent
			Use randomly selected User-Agents
		--mobile
			Use randomly selected smartphone User-Agents

		--data=[VAR=VAL]...
			Provide data to be sent in the request body
		--skip-urlencode
			Skip URL encoding of payload data
		--chunked
			Use HTTP chunked transfer encoded POST requests
		--param-del=[CHAR]
			Specify a character used for splitting parameter values

		--cookie=[VAR=VAL]...
			Provide a Cookie
		--cookie-del=[CHAR]
			Character used for splitting cookie values
		--drop-set-cookie
			Ignore the Set-Cookie header from response
		--live-cookies=[PATH]
			Provide a cookie-jar with live cookies
		--load-cookies=[PATH]
			Provide a cookie-jar in netscape/wget format

		--crawl=[NUMBER]
			Crawl the website starting from the target URL
		--crawl-exclude=[PATTERN]
			Exclude pages matching the regexp from crawling

	MATCHING
		--string=[PATTERN]
			Specify a string to match when a query is evaluated to true
		--not-string=[PATTERN]
			Specify a string to match when a query is evaluated to false
		--regexp=[PATTERN]
			Specify a regexp to match when a query is evaluated to true
		--code=[100-599]
			Specify a response code to match when a query is evaluated to true

		--text-only
			Compare pages based only on the textual content
		--titles
			Compare pages based only on their titles

	INJECTION
		--skip-heuristics
			Skip heuristic detection of SQLi/XSS vulnerabilities

		-p [NAME]...
			Specify testable parameters
		--skip=[NAME]...
			Skip testing the given parameters
		--skip-static
			Skip testing parameters that not appear to be dynamic
		--param-exclude=[PATTERN]
			Exclude parameters from testing based on a regexp
		--param-filter=[GET|POST]
			Select testable parameters by place
		--forms
			Parse and test forms on target URL

		--second-req=[PATH]
			Load second-order HTTP request from file
		--second-url=[URL]
			Provide a resulting page URL searched for second-order response

		--dbms=[NAME]
			Specify the back-end DBMS
		--dbms-cred=[USR:PWD]
			Provide the DBMS credentials
		--os=[NAME]
			Specify the back-end DBMS operating system

		--invalid-bignum
			Use big numbers for invalidating values
		--invalid-logical
			Use logical operations for invalidating values
		--invalid-string
			Use random strings for invalidating values
		--no-cast
			Turn off payload casting mechanism
		--no-escape
			Turn off string escaping mechanism
		--charset=[CHARSET]
			Specify the charset for Blind SQL injection

		--union-cols=[NUMBER]
			Specify the range of columns to test for UNION query SQL injection
		--union-char=[CHAR]
			Specify the character to use for bruteforcing number of columns
		--union-from=[NAME]
			Specify the table to use in FROM part of UNION query SQL injection
		--time-sec=[NUMBER]
			Specify the DBMS response delay in seconds

	PILLAGING
		-a, --all
			Retrieve everything
		--encoding=[ENCODING]
			Specify the character encoding used for data retrieval

		-U [USER]
			Specify the DBMS user to enumerate
		-D [NAME]
			Specify the DBMS database to enumerate
		-T [NAME]
			Specify the DBMS database table to enumerate
		-C [NAME]
			Specify the DBMS database table column to enumerate
		-X [NAME]
			Specify the DBMS database identifier to not enumerate

		-f, --fingerprint
			Perform an extensive DBMS version fingerprint
		-b, --banner
			Retrieve the DBMS banner
		--hostname
			Retrieve the DBMS server hostname
		--current-db
			Retrieve the DBMS current database
		--current-user
			Retrieve the DBMS current user
		--is-dba
			Detect if the DBMS current user is DBA

		--users
			Enumerate DBMS users
		--passwords
			Enumerate DBMS users password hashes
		--privileges
			Enumerate DBMS users privileges
		--roles
			Enumerate DBMS users roles
		--dbs
			Enumerate DBMS databases
		--tables
			Enumerate DBMS database tables
		--exclude-sysdbs
			Exclude DBMS system databases when enumerating tables
		--columns
			Enumerate DBMS database table columns
		--schema
			Enumerate DBMS schema
		--comments
			Check for DBMS comments during enumeration
		--statements
			Retrieve SQL statements being run on DBMS

		--common-tables
			Check for existence of common tables
		--common-columns
			Check for existence of common columns
		--common-files
			Check for existence of common files

		--dump
			Dump DBMS database table entries
		--dump-all
			Dump all DBMS databases tables entries
		--where=[EXPRESSION]
			Specify a WHERE condition while table dumping
		--start=[MIN]
			Provide a lower bound for entry dumping
		--stop=[MAX]
			Provide an upper bound for entry dumping
		--first=[MIN]
			Provide a lower bound for cutting the values of each dumped entry
		--last=[MAX]
			Provide an upper bound for cutting the values of each dumped entry

		--search
			Search columns, tables and/or database names
		--count
			Retrieve number of entries for each table
		--pivot-column=[NAME]
			Specify the pivot column
		--dns-domain=[NAME]
			Provide the domain name used for DNS exfiltration attack
		--table-prefix=[STRING]
			Provide a prefix for temporary tables

		--binary-fields=[NAME]...
			Specify binary fields for a special data handling
		--hex
			Use hex conversion during data retrieval
		--repair
			Redump entries having unknown character marker

		--sql-shell
			Prompt for an interactive SQL shell
		--sql-query=[EXPRESSION]
			Provide an SQL statement to be executed
		--sql-file=[PATH]...
			Load SQL statements for execution

	INFILTRATION
		--file-read=[PATH]
			Read a file from the DBMS file system
		--file-write=[PATH]
			Load a local file to upload on the DBMS file system
		--file-dest=[PATH]
			Specify the absolute path where to write in the DBMS file system

		--udf-inject
			Inject custom user-defined functions
		--shared-lib=[PATH]
			Provide the shared library

		--shell
			Prompt for an interactive sqlmap shell
		--os-cmd=[COMMAND]
			Execute an operating system command
		--os-shell
			Prompt for an interactive operating system shell
		--os-pwn
			Prompt for an OOB shell, Meterpreter or VNC
		--os-smbrelay
			One click prompt for an OOB shell, Meterpreter or VNC
		--os-bof
			Stored procedure buffer overflow exploitation
		--priv-esc
			Database process user privilege escalation
		--msf-path=[PATH]
			Specify the path where Metasploit Framework is installed
		--tmp-path=[PATH]
			Specify the absolute path of temporary files in the DBMS file system

		--reg-read
			Read a Windows registry key value
		--reg-add
			Write a Windows registry key value data
		--reg-del
			Delete a Windows registry key value
		--reg-key=[VAR]
			Provide the Windows registry key
		--reg-value=[VAL]
			Provide the Windows registry key value
		--reg-data=[STRING]
			Provide the Windows registry key value data
		--reg-type=[NAME]
			Provide the Windows registry key value type

		--cleanup
			Clean up the DBMS from sqlmap specific UDF and tables

	EVASION
		--skip-waf
			Skip heuristic detection of WAF/IPS protection

		--prefix=[STRING]
			Specify the injection payload prefix string
		--suffix=[STRING]
			Specify the injection payload suffix string
		--list-tampers
			Display a list of available tamper scripts
		--tamper=[NAME]...
			Use the given script for tampering injection data
		--eval=[EXPRESSION]
			Evaluate the given Python code before the request

		--ignore-code=[100-599]...
			Ignore problematic HTTP error codes
		--ignore-redirects
			Ignore redirection attempts
		--ignore-timeouts
			Ignore connection timeouts

		--safe-url=[URL]
			Provide a URL address to visit frequently during testing
		--safe-post=[VAR=VAL]
			Provide data to send in the safe request body
		--safe-req=[PATH]
			Load the safe request from a file
		--safe-freq=[NUMBER]
			Specify the interval between safe requests

		--csrf-token=[NAME]
			Provide the parameter used to hold anti-CSRF token
		--csrf-url=[URL]
			Provide the URL address to visit for extraction of anti-CSRF token
		--csrf-method=[METHOD]
			Specify the HTTP method to use during anti-CSRF token page visit
		--csrf-retries=[NUMBEr]
			Specify the amount of retries for anti-CSRF token retrieval

		--hpp
			Use HTTP parameter pollution method
		--randomize=[NAME]...
			Randomly change value for the given parameter

INPUT
	SOURCE
		--scope=[PATTERN]
			Filter targets with the given regexp
		-l [PATH]
			Load targets from Burp or WebScarab proxy log file
		-m [PATH]
			Load multiple targets from a textual file
		-g [STRING]
			Load targets from the results of a Google dork query
		--gpage=[NUMBER]
			Specify the Google dork results page from wich to load targets

	FORMAT
		--base64=[NAME]...
			Specify the parameter containing base64 encoded data
		--base64-safe
			Use URL and filename safe base64 alphabet

	FILTER

OUTPUT

	DESTINATION
		--output-dir=[PATH]
			Specify a path to store session and result files
		--tmp-dir=[PATH]
			Specify a path to store temporary files
		--results-file=[PATH]
			Specify the location for CSV results file in multiple targets mode

	FORMAT
		--dump-format=[CSV|HTML|SQLITE]
			Specify the format for dumped data
		--csv-del=[CHAR]
			Specify the delimiting character used in CSV output

	VERBOSITY
		-v [0-6]
			Defines the verbosity level
				0	-	Only Python tracebacks, error and critical messages
				1	-	Information and warning messages
				2	-	debug messages
				3	-	Payloads injected
				4	-	HTTP requests
				5	-	HTTP responses' headers
				6	-	HTTP responses' page content
		--parse-errors
			Parse and display DBMS error messages from responses
		--eta
			Display the estimated time of arrival for each output

		-t [PATH]
			Log all HTTP traffic into a textual file
		--har=[PATH]
			Log all HTTP traffic into a HAR file

		--alert=[COMMAND]
			Run a command locally when an SQL injection is found
		--beep
			Beep on question and/or when SQLi/XSS/FI is found
		--disable-coloring
			Disable console output coloring

CONFIGURATION
	FILE
		-c [PATH]
			Load options from a configuration INI file
		--save=[PATH]
			Save options to a configuration INI file

	ENVIRONMENT
		-s [PATH]
			Load session from a stored file
		--flush-session
			Flush session files for current target
		--fresh-queries
			Ignore query results stored in session file
		--offline
			Work in offline mode, using session data only
		--dependencies
			Check for missing sqlmap dependencies
		--update
			Update sqlmap
		--purge
			Safely remove all content from sqlmap data directory

MODULES
	--preprocess=[PATH]...
		Provide a script for preprocessing the request
	--postprocess=[PATH]...
		Provide a script for postprocessing the response

INTERACTION
	INTERFACE
		--answers=[NAME=[Y|N]]...
			Set predefined answers for specific prompts
		--batch
			Never ask for user input, using the default behavior
		--wizard
			Simple wizard interface for beginner users

OTHERS

	-z [PATTERN]...
		Use short mnemonics, allowing for a faster way of triggering multiple switches

HELP

	-h, --help
		Display the help information and exit
	-hh
		Display advanced help information and exit
	--version
		Output version information and exit
```

## Files

```bash
xml/payloads.xml # payloads used by sqlmap
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
[github.com](https://github.com/sqlmapproject/sqlmap)
[sqlmap.org](https://sqlmap.org/)
[github.com/wiki](https://github.com/sqlmapproject/sqlmap/wiki)
