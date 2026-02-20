---
category: tool
subjects:
  - cli
  - script
language: bash
package: exploitdb
os:
  - linux
tags:
  - cybersec/offensive/exploitation
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] exploitdb

> [!info] Command line search tool for Exploit-DB exploits and shellcodes

Perform detailed off-line searches through your locally checked-out copy of the Exploit-DB repository. Particularly useful for security assessments on segregated or air-gapped networks without Internet access.

## Command

```txt
searchsploit [OPTION]... [ARGMUENT]...

INPUT
	SOURCE
		--nmap [PATH]
			Checks all results in Nmap's XML output with service version

	FILTER
		-c, --case
		Enable case-sensitive search
		-e, --exact
			Perform an exact and in order match on exploit title
		-s, --strict
			In strict search the input values must exist, disabling fuzzy search for version range
		-t, --title
			Match only the exploit title
		--cve [STRING]
			Search for CVE value

OUTPUT
	DESTINATION
		-m, --mirror [NAME]
			Mirror an exploit to the current working directory

	FORMAT
		-j, --json
			Show result in JSON format
		--id
			Display the EDB-ID value rather than local path
		-p, --path
			Show the full path to an exploit
		-w, --www
			Show URLs to Exploit-DB rather than the local path

	FILTER
		--exclude=[STRING]...
			Remove values from results

	VERBOSITY
		-v, --verbose
			Increases verbosity

MODULES

	-u
		Check for and install any exploitdb package updates

INTERACTION

	-x, --examine [ID]
		Examine the exploit using the default paginator

HELP

	-h, --help
		Display the help information and exit
```

## Files

## Environmental Variables

```bash
VAR=VAL # desc
```

## Relevant Reading
- [[]]

## External Reference
[gitlab.com](https://www.gitlab.com/exploit-database/exploitdb)
[exploit-db.com](https://www.exploit-db.com/)
[exploit-db.com/searchsploit](https://www.exploit-db.com/searchsploit)
