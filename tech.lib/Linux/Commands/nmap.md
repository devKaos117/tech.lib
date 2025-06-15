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
  - operation
  - operation/analysis
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nmap

> [!info] Open source tool for network exploration and security auditing

Nmap was designed to rapidly scan large networks using raw [[IP]] packets in novel ways to determine what hosts are available on the network, what services they are offering, what OS they are running, what type of packet filters/[[firewall]]s are in use, and dozens of other characteristics

## Favorite Uses
```sh
nmap -sS -Pn -p- TARGET
nmap -A -T5 -Pn -D RND:7 TARGET
```

## Command
```txt
nmap [SCAN TYPE]... [OPTION]... [HOST]...

RUNTIME INTERACTION

	v / V
		Increase / decrease the verbosity level
	d / D
	    Increase / decrease the debugging Level
	p / P
	    Turn on / off packet tracing
	?
	    Print a runtime interaction help screen
	Anything else
	    Print out a status message

TARGET SPECIFICATION

	-iL [PATH]
		(Input from list) Reads target specifications from a file
	-iR [NUMBER]
		(Choose random targets) Choose the given ammount of targets at random. Input 0 for a never-ending scan
	--exclude [HOST]...
		(Exclude hosts/networks) Specifies a comma-separated list of targets to be excluded from the scan
	--excludefile [PATH]
		(Exclude list from file) Specifies a file containing a list of targets to be excluded from the scan 
	-n
		(No DNS resolution) Never do reverse DNS resolution on the active IP addresses it finds
	-R
		(DNS resolution for all targets) Always do reverse DNS resolution on the target IP addresses
	--resolve-all
		(Scan each resolved address) If a hostname target resolves to more than one address, scan all of them
	--unique
		(Scan each address only once) Scan each IP address only once
	--system-dns
		(Use system DNS resolver) Disable nmap's parallel IP resolver and use the system native one
	--dns-servers [HOST]...
		(Servers to use for reverse DNS queries) Ignore the DNS servers from the local resolv.conf file and use the provided server

HOST DISCOVERY

    -sL
        (List scan) Degenerate form of host discovery that simply lists each host of the network(s) specified, without sending any packets to the target hosts
    -sn
        (No port scan) Do not perform a port scan after host discovery
    -Pn
        (No ping) Skips the host discovery stage altogether and assume all hosts are alive
    -PS [PORT]...
        (TCP SYN ping) Sends an empty TCP packet with the SYN flag set
    -PA [PORT]...
        (TCP ACK ping) Sends an empty TCP packet with the ACK flag set
    -PU [PORT]...
        (UDP ping) Sends an empty UDP packet. Sometimes, a protocol-specific payload is sent for being more likely to elicit a response
    -PY [PORT]...
        (SCTP INIT ping) Sends an SCTP packet containing a minimal INIT chunk
    -PE 
        (ICMP echo ping) Sends an ICMP type 8 (echo request) packet to the target IP addresses
    -PP
        (ICMP timestamp ping) Sends an ICMP type 13 (timestamp request) packet to the target IP addresses
    -PM
        (ICMP address mask ping) Sends an ICMP type 15 (address mask request) packet to the target IP addresses
    -PO [NUMBER]
        (IP protocol ping) Sends IP packets with the specified protocol number set in their IP header. Check the protocol list and their respective numbers at /usr/share/nmap/nmap-protocols
    --disable-arp-ping
        (No ARP or ND Ping) Disable the default implicit behavior of performing ARP or IPv6 Neighbor Discovery (ND) discovery of locally connected ethernet hosts
    --discovery-ignore-rst
        (Ignore RST replies) Ignore RST packets during host discovery to "bypass" a firewall behaviour of spoofing TCP RST replies in response to probes to unoccupied or disallowed addresses
    --traceroute
        (Trace path to host) Performed a post-scan traceroute using information from the scan results to determine the port and protocol most likely to reach the target. Does not work with connect nor idle scans

PORT SCANNING TECHNIQUES

    --scanflags [[FLAG_VALUE]|[URG|ACK|PSH|RST|SYN|FIN]...]
        (Custom TCP scan) Allows you to design your own scan by specifying arbitrary TCP flags
    -sO
        (IP protocol scan) Determine which IP protocols are supported by target machines
    -sS
        (TCP SYN scan) Stealh half-open scanning
    -sT
        (TCP connect scan) Uses the OS syscalls to stablish a connection with the target machine and port. Useful when out of raw packet privileges
    -sU
        (UDP scans) Send a empty UDP packet to every targeted port. Some ports may have protocol-specific payload to increase response rate. Can be combined with a TCP scan to check both protocols during the same run
    -sY
        (SCTP INIT scan) Stealh half-open SCTP scanning
    -sN
        (TCP NULL scan) Sends empty TCP packets without any of the header's bits set
    -sF
        (TCP FIN scan) Sends empty TCP FIN packets
    -sX
        (TCP Xmas scan) Sends empty TCP packets with three flags in the header, FIN PSH URG, lighting the packet up like a Christmas tree
    -sA
        (TCP ACK scan) Sends empty TCP ACK packets. Useful only to map out firewall rulesets, determining whether they are stateful or not and which ports are filtered
    -sW
        (TCP Window scan) Similar to TCP ACK scan, except that it examines the TCP Window field of the RST packets returned to try and differentiate open ports from closed ones
    -sM
        (TCP Maimon scan) Sends empty FIN ACK packets
    -sZ
        (SCTP COOKIE ECHO scan) Advanced SCTP scan. Based on the fact that SCTP implementations should silently drop packets containing COOKIE ECHO chunks on open ports, but send an ABORT if the port is closed
    -sI [HOST]
        (idle scan) Advanced scan method that probes a zombie host, keeping track of its IP ID, and then proceeds to forge a packet sent by the zombie to the target, probing the zombie again and finding if the target responded
    -b [HOST]
        (FTP bounce scan) Probe the target by proxy FTP connections. Connect to one FTP server, then ask that files be sent to the target

	PORT SPECIFICATION AND SCAN ORDER

    -p [PORT]...
        (Only scan specified ports) Specifies which ports you want to scan and overrides the default. To multiple protocols scans, precedes the numbers by T, U, S or P to specify TCP, UDP, SCTP or IP. For IP protocol scanning, this specifies the protocol numbers you wish to scan for (0–255)
    --exclude-ports [PORT]...
        (Exclude the specified ports from scanning) Specifies ports for nmap to exclude from scanning
    -F
        (Fast limited port scan) Scan fewer ports than the default, from the top 1,000 ports down to 100
    -r
        (Don't randomize ports) Scan the ports sequentialy instead of randomly
    --port-ratio [NUMBER]
        Scans all ports in nmap-services file with a ratio greater than the one given. The ratio must be between 0.0 and 1.0.
    --top-ports [NUMBER]
        Scans the n highest-ratio ports found in nmap-services file after excluding all ports specified by

    MISCELLANEOUS OPTIONS

    -6
        (Enable IPv6 scanning) Use IPv6
    -A
        (Aggressive scan options) Enables additional advanced and aggressive options. Enables OS detection, version scanning, script scanning and traceroute
    --datadir [PATH]
        (Specify custom Nmap data file location) Specify the directory holding special files that contains data read at runtime by nmap
    --servicedb [PATH]
        (Specify custom services file) Use the specified services file rather than the default nmap-services data file
    --versiondb [PATH] 
        (Specify custom service probes file) Use the specified service probes file rather than the default nmap-service-probes data file
    --send-eth
        (Use raw ethernet sending) Send packets at the raw data link layer rather than the network layer
    --send-ip
        (Send at raw IP level) Send packets via raw IP sockets rather than sending lower level ethernet frames
    --privileged
        (Assume that the user is fully privileged) Assume that it is privileged enough to perform operations that usually require root privileges on Unix systems
    --unprivileged
        (Assume that the user lacks raw socket privileges) Opposite of --privileged
    --release-memory
        (Release memory before quitting) Release allocated memory just before it quits (useful for memory-leak debugging)

    -h, --help
        Display the help information and exit 
    -V, --version
        Output version information and exit
```

## Exit Status
- n - status

## Links
[github.com](https://github.com/nmap/nmap)
[nmap.org](https://nmap.org)
[nmap.org/man](https://nmap.org/book/man.html)
