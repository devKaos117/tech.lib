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
	ADDRESSING
	AUTHENTICATION
OPTIMIZATION
	PARALLELISM
	TIME
	RESOURCES
MODE
	OPERATION
	BEHAVIOUR
INPUT
	SOURCE
	FORMAT
	FILTER
OUTPUT
	DESTINATION
	FORMAT
	FILTER
	VERBOSITY
CONFIGURATION
	FILE
	ENVIRONMENT
MODULES
	MANAGING
	USING
INTERACTION
	INTERFACE
	CONTROL
OTHERS
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
