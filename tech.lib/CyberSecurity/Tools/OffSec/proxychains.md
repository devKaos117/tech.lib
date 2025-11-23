---
category: cli
subjects:
  - binary
language: c
package: proxychains-ng
tags:
  - cybersec/tools/offsec/post_exploit/exfiltration
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] proxychains-ng

> [!info] Forces any TCP connection to follow through proxy

A preloader which that hooks network-related libc functions in dynamically linked programs via a preloaded DLL and redirects the connections through SOCKS4a/5 or HTTP(S) proxies. It supports exclusively [[TCP]].

## Command
```txt
proxychains [OPTION]... [command [OPTION]... [ARGUMENT]...]

-q
	Makes proxychain quiet
-f [PATH]
	Manually specify a configuration file

--help
	Display the help information and exit
```

## Files
```bash
# proxychains searches for proxychains.conf sequentially through:
$PROXYCHAINS_CONF_FILE | -f .../proxychains.conf
./proxychains.conf
$HOME/.proxychains/proxychains.conf
/etc/proxychains.conf
```

## Environmental Variables
```bash
$PROXYCHAINS_CONF_FILE # Configuration file path
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/rofl0r/proxychains-ng)
