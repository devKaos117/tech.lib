---
category: cli
subjects:
  - script
language: bash
package: exploitdb
tags:
  - cybersec/tools/offsec/analysis
  - cybersec/tools/offsec/exploitation
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] exploitdb

> [!info] Command line search tool for Exploit-DB exploits and shellcodes

Perform detailed off-line searches through your locally checked-out copy of the Exploit-DB repository. Particularly useful for security assessments on segregated or air-gapped networks without Internet access.

## Command
```txt
searchsploit [OPTION]... [ARGMUENT]...

-c, --case
	Enable case-sensitive search
-e, --exact
	Perform an exact and in order match on exploit title
-s, --strict
	In strict search the input values must exist, disabling fuzzy search for version range
-t, --title
	Match only the exploit title
--exclude=[STRING]...
	Remove values from results
--cve [STRING]
	Search for CVE value

-j, --json
	Show result in JSON format
--id
	Display the EDB-ID value rather than local path
-p, --path
	Show the full path to an exploit
-w, --www
	Show URLs to Exploit-DB rather than the local path
-v, --verbose
	Increases verbosity

-u
	Check for and install any exploitdb package updates
-h, --help
	Display the help information and exit
```

## Relevant Reading
- [[]]

## External Reference
[gitlab.com](https://www.gitlab.com/exploit-database/exploitdb)
[exploit-db.com](https://www.exploit-db.com/)
[exploit-db.com/searchsploit](https://www.exploit-db.com/searchsploit)
