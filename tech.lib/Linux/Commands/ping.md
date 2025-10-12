---
package: iputils-ping
category: command
tags:
  - linux/cmds/network/sending
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] iputils-ping

> [!info] Send ICMP ECHO_REQUEST packets to network hosts

Uses the [[ICMP]] protocol's mandatory ECHO_REQUEST datagram to elicit an [[ICMP]] ECHO_RESPONSE from a host or gateway

## Command
```txt
ping [OPTIONS]... [LINK]

-4
	Use IPv4 only
-6
	Use IPv6 only
-f
	Flood ping. For every ECHO_REQUEST sent a period “.” is printed, while for every ECHO_REPLY received a backspace is printed. If interval is not given, it sets interval to zero and outputs packets as fast as they come back or one hundred times per second, whichever is more
-c [NUMBER]
	Stop after sending NUMBER ECHO_REQUEST packets. With deadline option, ping waits for NUMBER ECHO_REPLY packets, until the timeout expires
-D
	Print timestamp before each line
-I [ADDRESS|INTERFACE_NAME|VRF_NAME]
	If its given an interface address or name, it sets the source to the specified interface. If interface is a VRF name, each packet is routed using the corresponding routing table. It can be specified in the ipv6 address postfixing it with % and the output interface name or ifindex

-i [NUMBER]
	Wait NUMBER seconds between sending each packet. Real number allowed with dot as a decimal separator
-A
	Adaptive ping. Interpacket interval adapts to round-trip time, so that effectively not more than one unanswered probe is present in the network
-b
	Allow pinging a broadcast address
-l [NUMBER]
	Sends NUMBER many packets not waiting for reply
-U
	Print full user-to-user latency
-w [NUMBER]
	Specify a timeout, in seconds, before ping exits regardless of how many packets have been sent or received
-W [NUMBER]
	Time to wait for a response, in seconds. 0 means infinite timeout
-t [TIME]
	Ping only. Set the packet time-to-live
-L
	Suppress loopback of multicast packets

-p [PATTERN]
	Specify up to 16 “pad” bytes to fill out the packet you send. This is useful for diagnosing data-dependent problems in a network
-s [NUMBER]
	Specifies the number of data bytes to be sent. The default is 56, which translates into 64 ICMP data bytes when combined with the 8 bytes of ICMP header data
-e [NUMBER]
	Set the identification field of ECHO_REQUEST. Value 0 implies using raw socket
-F [HEX]
	IPv6 only. Allocate and set 20 bit flow label on echo request packets. If value is zero, kernel allocates random flow label
-Q [NUMBER|HEX]
	Set Quality of Service-related bits in ICMP datagrams
-S [SO_SNDBUF]
	Set socket SO_SNDBUF. If not specified, it is selected to buffer not more than one packet
-m [STRING]
	use STRING to tag the packets going out
-d
	Set the SO_DEBUG option on the socket being used

-H
	Force DNS name resolution for the output
-n
	Numeric output only. No attempt will be made to lookup symbolic names for host addresses (no reverse DNS resolution)
-r
	Bypass the normal routing tables and send directly to a host on an attached interface
-R
	ping only. Record route

-v
	Verbose output. Do not suppress DUP replies when pinging multicast address
-q
	Quiet output. Nothing is displayed except the summary lines at startup time and when finished

-h
	Display the help information and exit 
-V
	Output version information and exit
```

## Exit Status
- 0 - success
- 1 - no reply packet received
- 2 - other error

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/iputils/iputils/)
[linux.die.net](https://linux.die.net/man/8/ping)
