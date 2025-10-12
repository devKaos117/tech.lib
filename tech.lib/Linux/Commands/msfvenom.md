---
package: metasploit-framework
category: command
tags:
  - linux/cmds/security/offsec/post_exploit
  - linux/cmds/operation/encoding
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] metasploit-framework

> [!info] MSF payload generator and encoder

Being a combination of `msfpayload` and `msfencode`, this allows for the quick configuration and encoding of payloads from the [[msfconsole]] database.

## Command
```txt
msfvenom [OPTION]... [PATH]

-p, --payload [ARGUMENT]
	Payload to use
--payload-options
	List the payload's standard options

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

-h, --help
	Display the help information and exit 
--help-formats
	List available formats
-l, --list [all|payloads|encoders|nops|platforms|archs|encrypt|formats]
	List a module type
```

## Links
[github.com](https://github.com/rapid7/metasploit-payloads)
[docs.metasploit.com/msfvenom](https://docs.metasploit.com/docs/using-metasploit/basics/how-to-use-msfvenom.html)
