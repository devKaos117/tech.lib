---
category: cli
subjects:
  - binary
language: c
tags:
  - NULL
package: iproute2
category: command
tags:
  - linux/cmds/network/monitoring
  - linux/cmds/system/information
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] iproute2

> [!info] Utility to investigate sockets

Used to dump socket statistics, showing information similar to netstat but display more [[Compendium/Protocols/TCP|TCP]] and state information than other tools. When no option is used ``ss`` displays a list of open non-listening sockets that have established connection

## Favorite Uses
```sh
ss -ae [-4|-6] [-t|-u|-w|-x]
ss -at src :[PORT]
ss -pt dst :[PORT]
ss -lt src :[PORT]
ss --kill dst [ADDRESS]
```

## Command
```txt
ss [OPTIONS]... [[STATE-FILTER] [PATTERN]]

-a, --all
	Display both listening and non-listening sockets
-l, --listening
	Display only listening sockets
-B, --bound-inactive
	Display only TCP bound but inactive sockets
-i, --info
	Show internal TCP information
-o, --options
	Show timer information

-e, --extended
	Show detailed socket information
-s, --summary
	Print summary statistics. This option does not parse socket lists obtaining summary from various sources
-O, --oneline
	Print each socket's data on a single line

-m, --memory
	Show socket memory usage
-p, --processes
	Show process using socket
-T, --threads
	Show thread using socket. Implies -p
-E, --events
	Continually display sockets as they are destroyed

-K, --kill
	Attempts to forcibly close sockets. This option displays sockets that are successfully closed and silently skips sockets that the kernel does not support closing. It supports IPv4 and IPv6 sockets only

-r, --resolve
	Try to resolve numeric address/ports
-n, --numeric
	Do not try to resolve service names. Show exact bandwidth values, instead of human-readable
--tos
	Show ToS and priority information

-t, --tcp
	Display TCP sockets
-u, --udp
	Display UDP sockets
-d, --dccp
	Display DCCP sockets
-w, --raw
	Display RAW sockets
-S, --sctp
	Display SCTP sockets
-M, --mptcp
	Display MPTCP sockets

-f, --family=[unix|inet|inet6|link|netlink|vsock|tipc|xdp|help]
	Display sockets of the given family
-x, --unix
	Display Unix domain sockets (-f unix)
-4, --ipv4
	Display only IP version 4 sockets (-f inet)
-6, --ipv6
	Display only IP version 6 sockets (-f inet6)
-0, --packet
	Display PACKET sockets (-f link)
--vsock
	Display vsock sockets (-f vsock)
--tipc
	Display tipc sockets (-f tipc)
--xdp
	Display XDP sockets (-f xdp)

-A, --query, --socket=[!][all|inet|tcp|udp|raw|unix|packet|netlink|unix_dgram|unix_stream|unix_seqpacket|packet_raw|packet_dgram|dccp|sctp|tipc|vsock_stream|vsock_dgram|xdp|mptcp]
	List of socket tables to dump, separated by commas
--inet-sockopt
	Display inet socket options

-D, --diag=[PATH]...
	Do not display anything, just dump raw information about TCP sockets to FILE after applying filters
-F, --filter=[PATH]...
	Read filter information from FILE. Each line of FILE is interpreted like single command line option

-Z, --context
	As the -p option but also shows process security context
-z, --contexts
	As the -Z option but also shows the socket contexts

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/8/ss)
