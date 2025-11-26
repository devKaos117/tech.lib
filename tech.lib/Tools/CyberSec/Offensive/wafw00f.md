---
category: tool
subjects:
  - cli
  - script
language: python
package: wafw00f
os:
  - linux
  - windows
tags:
  - cybersec/offensive/reconnaissance/web
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] wafw00f

> [!info] Identify and fingerprint Web Application Firewall

WAFW00F allows one to identify and fingerprint Web Application Firewall (WAF) products protecting a website

## Favorite Uses
```sh
wafw00f -a URL
```

## Command
```txt
wafw00f [OPTION]... [TARGET]...

CONNECTION

	-p, --proxy=[PROTOCOL]://[USR]:[PWD]@[HOST[:PORT]]
		Use a proxy to perform requests

REQUESTS

	-r, --noredirect
		Do not follow redirections given by 3xx responses
	-H, --headers=[PATH]
		Pass custom headers, for example to overwrite the default user-agent string
	-T, --timeout=[NUMBER]
		Set the timeout for the requests

INPUT

	-i, --input=[PATH]
		Read targets from a file. Supports csv, json or text

OUTPUT

	-o, --output=[PATH]
		Write output to csv, json or text file depending on file extension
	-f, --format=[csv|json|txt]
		Force output format to csv, json or text

	--no-colors
		Disable ANSI colors in output
	-v, --verbose
		Enable verbose output. May be used multiple times

WAF

	-a, --findall
		Find all WAFs, do not stop testing on the first one
	-l, --list
		List all the WAFs that WAFW00F is able to detect
	-t, --test=[STRING]
		Test for one specific WAF product

HELP

	-h, --help
		Display the help information and exit
	-V, --version
		Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/EnableSecurity/wafw00f)
[enablesecurity.com](https://www.enablesecurity.com/)
[github.com/wiki](https://github.com/enablesecurity/wafw00f/wiki/)
