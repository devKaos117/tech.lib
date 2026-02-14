---
category: list
subjects:
  - tags
---
[RFC4949 - Internet Security Glossary v2](https://datatracker.ietf.org/doc/html/rfc4949)

## Categories

```dataview
LIST WITHOUT ID category GROUP BY category
```

## Tags
-  [cybersec]{} !!!
	- [cryptography]{} !!!
		- [hash]{} !!!
		- [symmetric]{} !!!
		- [asymmetric]{} !!!
	- [defensive]{} !!!
		- [network]{Network and traffic range of action}
		- [endpoint]{Endpoint range of action}
		- [monitoring]{Monitoring and alerting}
		- [prevention]{Hardening and protecting}
		- [response]{Ceasing or supressing threats}
		- [analysis]{Vulnerability assessment and analysis}
			- [static]{Analysis on static and non-executing applications}
			- [dynamic]{Analysis on live and running environments}
			- [web]{Analysis on web applications}
	- [forensics]{} !!!
		- [analysis]{Data analysis}
		- [reporting]{Generating reports}
		- [network]{Network related}
		- [memory]{Memory related}
		- [rev_eng]{Reverse engineering tools}
	- [offensive]{} !!!
		- [osint]{Open source intelligence}
			- [socmint]{Social media intelligence}
			- [general]{DNS, google dorking and other general OSINT}
		- [reconnaissance]{Target reconnaissance process}
			- [scanning]{Target or network scanning and analysis}
			- [enumerating]{Protocol, directory, addresses and other enumeration}
			- [web]{Web application analysis}
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

## Notations

```txt
[BYTES] = (\d+)([cw]|[KMGTPEZYRQ]?(?:b|B|iB))?
[OCTAL] = [0-7]+
[NUMBER] = \d+
[MIN] = Minimum value
[MAX] = Maximum value
[START] = Lower bound of a sequence
[END] = Upper bound of a sequence
[SIZE] = Total count of existing elements in a given set
[HEX] = ([\\0]x)?([0-9a-fA-F]+)
[CHAR] = .{1}
[STRING] = Pure text
[CHARSET] = Set of text characters
[ENCODING] = Data encoding algorithm
[PATTERN] = String filtering pattern
[MASK] = Template to format, conform, isolate or include data
[NAME] = Name used to identify a given resource
[TGE] = Time Since Epoch (Posix Epoch time)
[INTERFACE] = Target interface for a connection
[ADDRESS] = Target network address
[SUBNET] = Subnet mask
[PROTOCOL] = Network protocol
[METHOD] = Request method
[HOST] = Network address or FQDN
[PORT] = {1..65535}
[URL] = [PROTOCOL://][USR[:PWD]@]HOST[:PORT][/PATH[?QUERY][#FRAGMENT]]
[USR] = Username
[PWD] = Password
[USER] = UID, RID or username
[GROUP] = GID, RID or groupname
[VAR] = The name of a variable
[VAL] = The value to be assigned to a variable
[COMMAND] = Command instruction
[EXPRESSION] = String to be evaluated as an expression
[HASH] = Hashing algorithm
```

## Plugins
- [Advanced Tables](https://github.com/tgrosinger/advanced-tables-obsidian)
- [Dataview](https://blacksmithgu.github.io/obsidian-dataview/)
- [File Color](https://github.com/ecustic/obsidian-file-color)
- [Hover Reveal (custom)](https://github.com/Asrieal/HoverReveal)
- [Iconize](https://github.com/FlorianWoelki/obsidian-iconize)
- [Linter](https://github.com/platers/obsidian-linter)
- [Obsidian Things](https://github.com/colineckert/obsidian-things)
- [Templater](https://github.com/SilentVoid13/Templater)
