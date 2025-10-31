---
category: cli
subjects:
  - binary
language: c
package: john
tags:
  - cybersec/tools/offsec/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] john

> [!info] Advanced offline password cracker

John the Ripper is a fast password cracker, currently available for Unix, macOS, Windows, DOS, BeOS, and OpenVMS systems. Its primary purpose is to detect weak Unix passwords, but it also supports Kerberos/AFS and Windows LM hashes, as well as DES-based tripcodes, plus hundreds of additional hashes and ciphers.

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
john [OPTION]... [PATH]...


```

## Files
```bash
/etc/john/john.conf # john behaviour configuration
~/.john/john.ini # john rules and tweaks
~/.john/john.pot # 
~/.john/john.rec # session state file
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
[github.com](https://github.com/openwall/john)
[openwall.com](https://www.openwall.com/john/)
[openwall.com/doc/](https://www.openwall.com/john/doc/)
