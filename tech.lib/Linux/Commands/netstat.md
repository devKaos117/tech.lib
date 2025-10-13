---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: net-tools
category: command
tags:
  - linux/cmds/network/monitoring
  - linux/cmds/system/information
---

`$= dv.el('span',dv.current().file.mtime)`
> [!warning] Superseeded by [[ss]]

> [!package] net-tools

> [!info] Display network-related information

Print information about the Linux networking subsystem, including network connections, routing tables, interface statistics, masquerade connections, and multicast memberships. With no given options, it displays a list of open sockets

## Favorite Uses
```sh
netstat -[t|u]aec --protocol=[inet|inet6|unix]
```

## Command
```txt
netstat [OPTIONS]...

-A, --protocol=[inet|inet6|unix|ipx|ax25|netrom|econet|ddp|bluetooth]
	Specifies  the	address	 families for which connections are to be shown in a comma separated list of address family keywords
-c, --continuous
	This will cause netstat to print the selected information every second continuously

-a, --all
	Show both listening and non-listening sockets
-l, --listening
	Show only listening sockets
-o, --timers
	Include information related to networking timers
-p, --program
	Show the PID and name of the program to which each socket belongs

-e, --extend
	Display additional information.	 Use this option twice for maximum detail
--route, -r
	Display the kernel routing tables
-C
	Print routing information from the route cache
--groups, -g
	Display multicast group membership information for IPv4 and IPv6
--interfaces, -i
	Display a table of all network interfaces
--masquerade, -M
	Display a list of masqueraded connections
--statistics, -s
	Display summary statistics for each protocol

--numeric, -n
	Show numerical addresses instead of trying to determine symbolic host, port or user names
--numeric-hosts
	Shows numerical host addresses but does not affect the resolution of port or user names
--numeric-ports
	Shows numerical port numbers but does not affect the resolution of host or user names
--numeric-users
	Shows numerical user IDs but does not affect the resolution of host or port names

--wide, -W
	Do not truncate IP addresses by using output as wide as needed
--verbose, -v
	Verbose output. Especially print some useful information about unconfigured address families

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/8/netstat)
