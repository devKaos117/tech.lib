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
- Time-based blind
- Error-based
- UNION query-based
- Stacked queries

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
sqlmap [OPTION]... [ARGUMENT]...

CONNECTION
	PROTOCOL
		--force-ssl		Force usage of SSL/HTTPS

		--proxy=PROXY			Use a proxy to connect to the target URL
		--proxy-cred=PRO..		Proxy authentication credentials (name:password)
		--proxy-file=PRO..		Load proxy list from a file
		--proxy-freq=PRO..		Requests between change of proxy from a given list

		--tor					 Tor anonymity network
		--tor-port=TORPORT		Set Tor proxy port other than default
		--tor-type=TORTYPE		Set Tor proxy type (HTTP, SOCKS4 or SOCKS5 (default))
		--check-tor				Check to see if Tor is used properly

	ADDRESSING
		-u, --url=[URL]
			Define the target URL
		--web-root=WEBROOT	Web server document root directory (e.g. "/var/www")
		-d [URL]
			Provide a connection string for direct database connection

	AUTHENTICATION
		--auth-type=[basic|digest|ntlm|pki]		HTTP authentication type (Basic, Digest, NTLM or PKI)
		--auth-cred=[USR:PWD]					HTTP authentication credentials (name:password)
		--auth-file=AUTH..						HTTP authentication PEM cert/private key file

OPTIMIZATION
	GENERAL
		-o						Turn on all optimization switches
		--test-filter=TE..	Select tests by payloads and/or titles (e.g. ROW)
		--test-skip=TEST..	Skip tests by payloads and/or titles (e.g. BENCHMARK)

	PARALLELISM
		--threads=THREADS		Max number of concurrent HTTP(s) requests (default 1)

	TIME
		--delay=DELAY			Delay in seconds between each HTTP request
		--timeout=TIMEOUT		Seconds to wait before timeout connection (default 30)
		--retries=RETRIES		Retries when the connection timeouts (default 3)

	RESOURCES
		--predict-output		Predict common queries output
		--keep-alive			Use persistent HTTP(s) connections
		--null-connection		Retrieve page length without actual HTTP response body
		--check-internet	Check Internet connection before assessing the target
		--unstable			Adjust options for unstable connections

MODE
	--smart					Perform thorough tests only if positive heuristic(s)
	--technique=TECH..		SQL injection techniques to use (default "BEUSTQ")
	--level=LEVEL			Level of tests to perform (1-5, default 1)
	--risk=RISK				Risk of tests to perform (1-3, default 1)

	--udf-inject			Inject custom user-defined functions
	--second-url=SEC..	Resulting page URL searched for second-order response

BEHAVIOUR
	HTTP
		-r [PATH]				Load HTTP request from a file
		--method=[METHOD]		Specify an HTTP method

		-H, --header [STRING]	Provide an additional HTTP header
		--headers=HEADERS		Extra headers (e.g. "Accept-Language: fr\nETag: 123")
		--host=HOST				HTTP Host header value
		--referer=REFERER		HTTP Referer header value

		-A, --user [STRING]		Specify the HTTP User-Agent
		--random-agent			Use randomly selected HTTP User-Agent header value
		--mobile				Imitate smartphone through HTTP User-Agent header

		--data=[STRING]			Provide data to be sent through the request
		--skip-urlencode		Skip URL encoding of payload data
		--chunked				Use HTTP chunked transfer encoded (POST) requests
		--param-del=[CHAR]		Specify a character used for splitting parameter values

		--cookie=COOKIE				HTTP Cookie header value (e.g. "PHPSESSID=a8d127e..")
		--cookie-del=COO			Character used for splitting cookie values (e.g. ;)
		--drop-set-cookie			Ignore Set-Cookie header from response
		--live-cookies=[PATH]		Live cookies file used for loading up-to-date values
		--load-cookies=[PATH]		File containing cookies in Netscape/wget format

		--crawl=CRAWLDEPTH	Crawl the website starting from the target URL
		--crawl-exclude=..	Regexp to exclude pages from crawling (e.g. "logout")
		--forms				Parse and test forms on target URL

	MATCHING
		--string=STRING			String to match when query is evaluated to True
		--not-string=NOT..		String to match when query is evaluated to False
		--regexp=REGEXP			Regexp to match when query is evaluated to True
		--code=CODE				HTTP code to match when query is evaluated to True
		--text-only				Compare pages based only on the textual content
		--titles				Compare pages based only on their titles

	INJECTION
		--skip-heuristics	Skip heuristic detection of SQLi/XSS vulnerabilities

		-p TESTPARAMETER		Testable parameter(s)
		--skip=SKIP				Skip testing for given parameter(s)
		--skip-static			Skip testing parameters that not appear to be dynamic
		--param-exclude=..		Regexp to exclude parameters from testing (e.g. "ses")
		--param-filter=P..		Select testable parameter(s) by place (e.g. "POST")

		--dbms=DBMS				Force back-end DBMS to provided value
		--dbms-cred=DBMS..		DBMS authentication credentials (user:password)
		--os=OS					Force back-end DBMS operating system to provided value

		--invalid-bignum		Use big numbers for invalidating values
		--invalid-logical		Use logical operations for invalidating values
		--invalid-string		Use random strings for invalidating values
		--no-cast				Turn off payload casting mechanism
		--no-escape				Turn off string escaping mechanism
		--charset=CHARSET	Blind SQL injection charset (e.g. "0123456789abcdef")

		--union-cols=UCOLS	Range of columns to test for UNION query SQL injection
		--union-char=UCHAR	Character to use for bruteforcing number of columns
		--union-from=UFROM	Table to use in FROM part of UNION query SQL injection
		--time-sec=TIMESEC	Seconds to delay the DBMS response (default 5)

	PILLAGING
		-a, --all			Retrieve everything
		--encoding=ENCOD..	Character encoding used for data retrieval (e.g. GBK)

		-U USER				DBMS user to enumerate
		-D DB				DBMS database to enumerate
		-T TBL				DBMS database table(s) to enumerate
		-C COL				DBMS database table column(s) to enumerate
		-X EXCLUDE			DBMS database identifier(s) to not enumerate

		-f, --fingerprint	Perform an extensive DBMS version fingerprint
		-b, --banner		Retrieve DBMS banner
		--hostname			Retrieve DBMS server hostname
		--current-db		Retrieve DBMS current database
		--current-user		Retrieve DBMS current user
		--is-dba			Detect if the DBMS current user is DBA

		--users				Enumerate DBMS users
		--passwords			Enumerate DBMS users password hashes
		--privileges		Enumerate DBMS users privileges
		--roles				Enumerate DBMS users roles
		--dbs				Enumerate DBMS databases
		--tables			Enumerate DBMS database tables
		--exclude-sysdbs	Exclude DBMS system databases when enumerating tables
		--columns			Enumerate DBMS database table columns
		--schema			Enumerate DBMS schema
		--comments			Check for DBMS comments during enumeration
		--statements		Retrieve SQL statements being run on DBMS

		--common-tables		Check existence of common tables
		--common-columns	Check existence of common columns
		--common-files		Check existence of common files

		--dump				Dump DBMS database table entries
		--dump-all			Dump all DBMS databases tables entries
		--where=DUMPWHERE	Use WHERE condition while table dumping

		--search			Search column(s), table(s) and/or database name(s)
		--count				Retrieve number of entries for table(s)
		--pivot-column=P..	Pivot column name
		--dns-domain=DNS..	Domain name used for DNS exfiltration attack
		--table-prefix=T..	Prefix used for temporary tables (default: "sqlmap")

		--start=LIMITSTART	First dump table entry to retrieve
		--stop=LIMITSTOP	Last dump table entry to retrieve
		--first=FIRSTCHAR	First query output word character to retrieve
		--last=LASTCHAR		Last query output word character to retrieve

		--binary-fields=..	Result fields having binary values (e.g. "digest")
		--hex				Use hex conversion during data retrieval
		--repair			Redump entries having unknown character marker (?)

		--sql-query=SQLQ..	SQL statement to be executed
		--sql-shell			Prompt for an interactive SQL shell
		--sql-file=SQLFILE	Execute SQL statements from given file(s)

	INFILTRATION
		--tmp-dir=TMPDIR	Local directory for storing temporary files
		--file-read=FILE..		Read a file from the back-end DBMS file system
		--file-write=FIL..		Write a local file on the back-end DBMS file system
		--file-dest=FILE..		Back-end DBMS absolute filepath to write to

		--shell				Prompt for an interactive sqlmap shell
		--os-cmd=OSCMD			Execute an operating system command
		--os-shell				Prompt for an interactive operating system shell
		--os-pwn				Prompt for an OOB shell, Meterpreter or VNC
		--os-smbrelay			One click prompt for an OOB shell, Meterpreter or VNC
		--os-bof				Stored procedure buffer overflow exploitation
		--priv-esc				Database process user privilege escalation
		--msf-path=MSFPATH		Local path where Metasploit Framework is installed
		--tmp-path=TMPPATH		Remote absolute path of temporary files directory

		--reg-read			Read a Windows registry key value
		--reg-add			Write a Windows registry key value data
		--reg-del			Delete a Windows registry key value
		--reg-key=REGKEY	Windows registry key
		--reg-value=REGVAL	Windows registry key value
		--reg-data=REGDATA	Windows registry key value data
		--reg-type=REGTYPE	Windows registry key value type

		--cleanup			Clean up the DBMS from sqlmap specific UDF and tables

	WAF/IDS EVASION
		--skip-waf			Skip heuristic detection of WAF/IPS protection

		--prefix=PREFIX			Injection payload prefix string
		--suffix=SUFFIX			Injection payload suffix string
		--list-tampers		Display list of available tamper scripts
		--tamper=TAMPER			Use given script(s) for tampering injection data
		--eval=EVALCODE			Evaluate provided Python code before the request

		--ignore-code=IG..		Ignore (problematic) HTTP error code (e.g. 401)
		--ignore-proxy			Ignore system default proxy settings
		--ignore-redirects		Ignore redirection attempts
		--ignore-timeouts		Ignore connection timeouts

		--safe-url=SAFEURL		URL address to visit frequently during testing
		--safe-post=SAFE..		POST data to send to a safe URL
		--safe-req=SAFER..		Load safe HTTP request from a file
		--safe-freq=SAFE..		Regular requests between visits to a safe URL

		--csrf-token=CSR..		Parameter used to hold anti-CSRF token
		--csrf-url=CSRFURL		URL address to visit for extraction of anti-CSRF token
		--csrf-method=CS..		HTTP method to use during anti-CSRF token page visit
		--csrf-retries=C..		Retries for anti-CSRF token retrieval (default 0)

		--hpp					Use HTTP parameter pollution method
		--randomize=RPARAM		Randomly change value for given parameter(s)

INPUT
	SOURCE
		--scope=SCOPE		Regexp for filtering targets
		-l [PATH]		Parse target(s) from Burp or WebScarab proxy log file
		-m [PATH]		Scan multiple targets given in a textual file
		-g [STRING]		Process Google dork results as target URLs
		--gpage=GOOGLEPAGE	Use Google dork results from specified page number

		--shared-lib=SHLIB	Local path of the shared library
		--second-req=SEC..	Load second-order HTTP request from file

		--preprocess=PRE..	Use given script(s) for preprocessing (request)
		--postprocess=PO..	Use given script(s) for postprocessing (response)

	FORMAT
		--base64=BASE64P..	Parameter(s) containing Base64 encoded data
		--base64-safe		Use URL and filename safe Base64 alphabet (RFC 4648)

	FILTER

OUTPUT

	DESTINATION
		-t TRAFFICFILE		Log all HTTP traffic into a textual file
		--output-dir=OUT..	Custom output directory path
		--results-file=R..	Location of CSV results file in multiple targets mode

	FORMAT
		--dump-format=DU..	Format of dumped data (CSV (default), HTML or SQLITE)
		--csv-del=CSVDEL	Delimiting character used in CSV output (default ",")

	FILTER

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
		--parse-errors		Parse and display DBMS error messages from responses
		--eta				Display for each output the estimated time of arrival
		--har=HARFILE		Log all HTTP traffic into a HAR file

		--alert=ALERT		Run host OS command(s) when SQL injection is found
		--beep				Beep on question and/or when SQLi/XSS/FI is found
		--disable-coloring	Disable console output coloring

CONFIGURATION
	FILE
		-c [PATH]
			Load options from a configuration INI file
		--save=SAVECONFIG	Save options to a configuration INI file

	ENVIRONMENT
		-s SESSIONFILE		Load session from a stored (.sqlite) file
		--flush-session		Flush session files for current target
		--fresh-queries		Ignore query results stored in session file
		--offline			Work in offline mode (only use session data)
		--dependencies		Check for missing (optional) sqlmap dependencies
		--update			Update sqlmap
		--purge				Safely remove all content from sqlmap data directory

MODULES
	MANAGING

	USING

INTERACTION
	INTERFACE
		--answers=ANSWERS	Set predefined answers (e.g. "quit=N,follow=N")
		--batch				Never ask for user input, use the default behavior
		--wizard			Simple wizard interface for beginner users

	CONTROL

OTHERS

	-z MNEMONICS		Use short mnemonics (e.g. "flu,bat,ban,tec=EU")

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
[github.com](https://github.com/sqlmapproject/sqlmap)
[sqlmap.org](https://sqlmap.org/)
[github.com/wiki](https://github.com/sqlmapproject/sqlmap/wiki)
