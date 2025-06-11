---
package: nmap
category: command
tags:
  - security
  - security/offsec
  - security/offsec/
  - security/offsec/reconnaissance
  - security/offsec/reconnaissance/scanning
  - network
  - network/sending
  - operation
  - operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nmap

> [!info] Open source tool for network exploration and security auditing

Nmap was designed to rapidly scan large networks using raw [[IP]] packets in novel ways to determine what hosts are available on the network, what services they are offering, what OS they are running, what type of packet filters/[[firewall]]s are in use, and dozens of other characteristics

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
nmap [OPTION]... [HOST]...

[BYTES] = [0-9]{1,}[[c|w|b]|[K|M|G|T|P|E|Z|Y|R|Q][B|iB]]

-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Exit Status
- n - status

## Links
[github.com](https://github.com/nmap/nmap)
[nmap.org](https://nmap.org)
[nmap.org/man](https://nmap.org/book/man.html)
