---
category: tool
subjects:
  - cli
  - binary
language: c
package: metasploit-framework
os:
  - linux
tags:
  - cybersec/offensive/exploitation
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] metasploit-framework

> [!info] MSF payload generator and encoder

Being a combination of `msfpayload` and `msfencode`, this allows for the quick configuration and encoding of payloads from the [[msfconsole]] database.

## Favorite Uses

```sh
msfvenom -p PAYLOAD OPTIONS -a ARCH -f FORMAT -e ENCODER -o FILE
```

## Command

```txt
msfvenom [OPTION]... [PATH]

BEHAVIOUR

	-p, --payload [ARGUMENT]
		Payload to use
	-c, --add-code [PATH]
		Specify an additional win32 shellcode file to include
	-n, --nopsled [NUMBER]
		Prepend a nopsled of [NUMBER] size on to the payload

	-x, --template [PATH]
		Specify a custom executable file to use as a template
	-k, --keep
		Preserve the template behavior and inject the payload as a new thread
	-v, --var-name [STRING]
		Specify a custom variable name to use for certain output formats

OUTPUT

	-o, --out [PATH]
		Save the payload
	-f, --format [ARGUMENT]
		Output format
	-a, --arch [ARGUMENT]
		The architecture to use
	--platform [ARGUMENT]
		The platform of the payload

	-e, --encoder [ARGUMENT]
		The encoder to use
	-i, --iterations [NUMBER]
		The number of times to encode the payload
	-b, --bad-chars [CHAR]...
		The list of characters to avoid
	-s, --space [NUMBER]
		The maximum size of the resulting payload
	--smallest
		Generate the smallest possible payload

HELP

	-l, --list [all|payloads|encoders|nops|platforms|archs|encrypt|formats]
		List a module type
	--payload-options
		List the payload's standard options

	-h, --help
		Display the help information and exit
	--help-formats
		List available formats
```

## Files

## Environmental Variables

```bash
VAR=VAL # desc
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/rapid7/metasploit-payloads)
[docs.metasploit.com/msfvenom](https://docs.metasploit.com/docs/using-metasploit/basics/how-to-use-msfvenom.html)
