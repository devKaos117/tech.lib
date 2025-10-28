---
category: list
subjects:
  - tags
---
-  [cybersec]{} !!!
	- [cryptography]{} !!!
		- [hash]{} !!!
		- [symmetric]{} !!!
		- [asymmetric]{} !!!
	- [theory]{} !!!
		- [concept]{} !!!
		- [regulation]{} !!!
		- [framework]{} !!!
	- [tools]{} !!!
		- [cryptography]{} !!!
			- [hash]{} !!!
			- [symmetric]{} !!!
			- [asymmetric]{} !!!
		- [defsec]{} !!!
			- [network]{Network and traffic range of action}
			- [endpoint]{Endpoint range of action}
			- [monitoring]{Monitoring and alerting}
			- [prevention]{Hardening and protecting}
			- [response]{Ceasing or supressing threats}
		- [forensics]{} !!!
			- [analysis]{Data analysis}
			- [reporting]{Generating reports}
			- [network]{Network related}
			- [memory]{Memory related}
			- [rev_eng]{Reverse engineering tools}
		- [offsec]{} !!!
			- [osint]{Open source intelligence}
				- [socmint]{Social media intelligence}
				- [general]{DNS, google dorking and other general OSINT}
			- [reconnaissance]{Target reconnaissance process}
				- [scanning]{Target and network scanning}
				- [enumerating]{Protocol, directory, addresses and other enumeration}
			- [analysis]{} !!!
				- [static]{Vulnerability assessment and analysis without target execution}
				- [dynamic]{Vulnerability assessment and analysis on live environments}
				- [web]{Vulnerability assessment and analysis on web applications}
			- [spoofing]{Creating deceptive imitations}
			- [exploitation]{} !!!
				- [web]{Web applications vulnerabilities exploitation}
				- [network]{Network services and protocols exploitation}
				- [wireless]{Wireless networks exploitation}
				- [credential]{Attacking, cracking or overwriting access credentials}
			- [post_exploit]{} !!!
				- [escalation]{Gaining higher privileges on the compromised system}
				- [lateralization]{Moving to other systems within the network}
				- [persistence]{Maintaining access to the compromised system}
				- [C2]{Command & Control}
				- [dumping]{Obtaining sensitive information}
				- [exfiltration]{Stealing data from the compromised system}
			- [reporting]{Report generation tools}
-  [foundations]{} !!!
	- [resource]{} !!!
	- [authority]{} !!!
- [linux]{} !!!
	- [bash]{} !!!
	- [boot]{} !!!
	- [cmds]{} !!!
		- [cli]{} !!!
			- [shell]{Shell interpreters}
			- [terminal]{Terminal emulators}
			- [environment]{Environment changes}
			- [text]{Text related}
			- [help]{Manuals and help commands}
			- [development]{Development related}
			- [utilities]{Utilities}
			- [random]{Random shit}
		- [file]{} !!!
			- [write]{Writing to the contents of a file}
			- [manage]{Creation, deletion, relocation and property alteration of a file}
			- [navigate]{Navigating through a filesystem}
			- [inspect]{Analysis of a file}
			- [archiving]{Processes related to file archives}
			- [compression]{Compression of files}
			- [search]{Search for a file}
			- [backup]{Creation and management of a copy}
		- [network]{} !!!
			- [connection]{Host connection establishment and management}
			- [local]{Local network management (wifi, bt)}
			- [monitoring]{Network monitoring}
			- [configuration]{Network and interfaces configuration}
			- [sending]{Information sending}
			- [recieving]{Information recieving}
			- [tunneling]{Network tunneling with VPN's and proxies}
		- [system]{} !!!
			- [user]{Users, groups and privileges management}
			- [process]{Process monitoring and management}
			- [service]{Services management}
			- [power]{Power monitoring and management}
			- [time]{Time related}
			- [information]{Analysis, logs and inspection}
			- [disk]{Filesystem, disk and storage devices management}
			- [hardware]{Hardware related}
			- [package]{Package management}
		- [operation]{} !!!
			- [comparison]{Finding differences and similarities}
			- [conversion]{Converting or translating}
			- [transformation]{Transforming in a largely irreversible way}
			- [filtering]{Filtering something}
			- [encoding]{Converting data into code}
			- [decoding]{Converting code into data}
			- [manipulation]{Modifying and altering}
			- [transfering]{Relocating}
			- [analysis]{Analyzing and inspecting}
	- [fhs]{} !!!
	- [kernel]{} !!!
- [plataform]{} !!!
	- [boot]{} !!!
	- [core]{} !!!
	- [interface]{} !!!
- [networks]{} !!!
	- [architecture]{} !!!
	- [protocol]{} !!!
- [windows]{} !!!


```
[BYTES] = (\d+)([cw]|[KMGTPEZYRQ]?(?:b|B|iB))?
[OCTAL] = [0-7]+
[NUMBER] = \d+
[HEX] = ([\\0]x)?([0-9a-fA-F]+)
[CHAR] = .{1}
[TIME] = 
[POSIX_TIME] = 
[STRING] = 
[INTERFACE] = 
[ADDRESS] = 
[SUBNET] = 
[SUBNET-SIZE] = 
[PROTOCOL] = 
[METHOD] = 
[HOST] = 
[PORT] = {1..65535}
[URL] = 
[USR] = username
[PWD] = password
[PATTERN] = string filtering pattern
[CHARSET]
[ENCODING]
[COMMAND]
[HASH]
```