---
category: cli
subjects:
  - script
language: python
package: hashid
tags:
  - cybersec/tools/offsec/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] hashid

> [!info] Identify the different types of hashes used to encrypt data

Tool designed to identify hashes, parse a file or read files in a directory and identify the hashes within them. Has built-in support for [[CyberSecurity/Tools/OffSec/hashcat|hashcat]] and [[CyberSecurity/Tools/OffSec/john|JohnTheRipper]] formats

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
hashid [OPTION]... [INPUT]

-e, --extended
	list all possible hash algorithms including salted passwords

-m, --mode
	Include corresponding hashcat mode in output
-j, --john
	Include corresponding JohnTheRipper format in the output
-o, --outfile [PATH]
	Redirect the output to a file

-h, --help
	Display the help information and exit
--version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/psypanda/hashID)
[psypanda.github.io](https://psypanda.github.io/hashID/)
