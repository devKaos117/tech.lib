---
category: cli
subjects:
  - binary
language: c
package: nmap
tags:
  - cybersec/tools/offsec/reconnaissance/scanning
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nmap

> [!info] Open source tool for network exploration and security auditing

Nmap was designed to rapidly scan large networks using raw [[Networks/IP|IP]] packets in novel ways to determine what hosts are available on the network, what services they are offering, what OS they are running, what type of packet filters/[[Networks/firewall|firewall]]s are in use, and dozens of other characteristics

## Favorite Uses
```sh
nmap -sS NETWORK
nmap -sS -Pn -p- TARGET
nmap -sV --script vuln TARGET
nmap -A -T5 -Pn -D RND:7 TARGET
nmap -sS -Pn -sV -O -sC -T2 -g 53 -oG host/TARGET.map -p PORT TARGET
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
	--unique
		(Scan each address only once) Scan each IP address only once

	-n
		(No DNS resolution) Never do reverse DNS resolution on the active IP addresses it finds
	-R
		(DNS resolution for all targets) Always do reverse DNS resolution on the target IP addresses
	--resolve-all
		(Scan each resolved address) If a hostname target resolves to more than one address, scan all of them
	--system-dns
		(Use system DNS resolver) Disable nmap's parallel IP resolver and use the system native one
	--dns-servers [HOST]...
		(Servers to use for reverse DNS queries) Ignore the DNS servers from the local resolv.conf file and use the provided server

HOST DISCOVERY

	-sn
		(No port scan) Do not perform a port scan after host discovery
	-Pn
		(No ping) Skips the host discovery stage altogether and assume all hosts are alive
	-sL
		(List scan) Degenerate form of host discovery that simply lists each host of the network(s) specified, without sending any packets to the target hosts

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
	-PR
		(ARP scan) Requires Nmap to issue a series of ARP requests

	--disable-arp-ping
		(No ARP or ND Ping) Disable the default implicit behavior of performing ARP or IPv6 Neighbor Discovery (ND) discovery of locally connected ethernet hosts
	--discovery-ignore-rst
		(Ignore RST replies) Ignore RST packets during host discovery to "bypass" a firewall behaviour of spoofing TCP RST replies in response to probes to unoccupied or disallowed addresses
	--traceroute
		(Trace path to host) Performed a post-scan traceroute using information from the scan results to determine the port and protocol most likely to reach the target. Does not work with connect nor idle scans

PORT SCANNING TECHNIQUES

	--scanflags [[FLAG_VALUE]|[URG|ACK|PSH|RST|SYN|FIN]]...
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

SERVICE AND VERSION DETECTION

	-sV
		(Version detection) Enables version detection by using the nmap-service-probes database for querying various services and matching expressions to recognize and parse responses. It tries to determine the service protocol, application name and version number, hostname, device type, OS family and known CPE's.
	--allports
		(Don't exclude any ports) Ignores the default behavior of skiping TCP port 9100
	--version-intensity [0-9]
		(Set version scan intensity) Specifies the intensity for the version scan, including less common and rare useful probes on the higher levels, but increasing the probability of correctly identifing the service
	--version-trace
		(Trace version scan activity) Print out extensive debugging info about what version scanning is doing

OS DETECTION

	-O
		(Enable OS detection) Try to detect OS fingerprints by sending a series of TCP and UDP packets to the remote host, examining every bit in the responses and performing a series of tests such as TCP ISN sampling, TCP options support and ordering, IP ID sampling, and the initial window size check. Then it matches the results to the nmap-os-db database.
	--osscan-limit
		(Limit OS detection to promising targets) Do not even try OS detection against hosts that do not present at least one open and one closed TCP port
	--fuzzy, --osscan-guess
		(Guess OS detection results) When unable to detect a perfect OS match, shows the imperfect matches and display its confidence level
	--max-os-tries [NUMBER]
		(Set the maximum number of OS detection tries against a target) Allows for changing the default five retries on OS detection

NMAP SCRIPTING ENGINE (NSE)
	
	-sC
		(Default script) Performs a script scan using the default set of scripts
	--script [+][PATH|category|expression]...
		(Runs a script scan) Define the scripts to be run. Each element is interpreted first as an binary expression, then as a category, and finally as a file or directory name
	--script-args [VAR=VAL]...
		(Script arguments assignment) Lets you provide arguments to NSE scripts
	--script-args-file [PATH]
		(Script arguments file) Lets you load arguments to NSE scripts from a file
	--script-help [PATH|category|expression|all]...
		(Shows help about scripts) For each script matching the given specification, prints the script name, categories and its description
	--script-trace
		(Trace data sent and received) Prints all incoming and outgoing communication performed by a script
	--script-updatedb
		(Updates the script database) Updates the script.db, which is used by Nmap to determine the available default scripts and categories

TIMING AND PERFORMANCE

	-T [paranoid|sneaky|polite|normal|aggressive|insane|0-5]
		(Set a timing template) Use predefined timing templates. Paranoid and sneaky are designed for IDS evasion, polite slows down the scan to consume less bandwidth and target machine resources, aggressive is for reasonably fast and reliable networks, insane needs an extraordinarily fast network or the will to sacrifice some accuracy for speed.
	--nsock-engine [iocp|epoll|kqueue|poll|select]
		(nsock multiplexing engine) Enforce use of a given nsock IO multiplexing engine

	--min-parallelism [NUMBER]
		(Adjust probe parallelization) Defines the lower limit of probes that may be outstanding for a host group
	--max-parallelism [NUMBER]
		(Adjust probe parallelization) Defines the upper limit of probes that may be outstanding for a host group
	--min-hostgroup [NUMBER]
		(Adjust parallel scan group sizes) Defines the lower limit for parallel multiple hosts scanning
	--max-hostgroup [NUMBER]
		(Adjust parallel scan group sizes) Defines the upper limit for parallel multiple hosts scanning

	--min-rtt-timeout [TIME]
		(Adjust probe timeouts) Defines the lower limit for the probe's response timeout before giving up or retransmitting it
	--max-rtt-timeout [TIME]
		(Adjust probe timeouts) Defines the upper limit for the probe's response timeout before giving up or retransmitting it
	--initial-rtt-timeout [TIME]
		(Adjust probe timeouts) Defines the initial timeout for probe's response before giving up or retransmitting it

	--max-retries [NUMBER]
		(Adjust probing retries) Defines the number of retries for the scan probes
	--host-timeout [TIME]
		(Adjust individual host timeout) Defines the timeout for the scan on each host
	--script-timeout [TIME]
		(Adjust individual script timeout) Defines the timeout for the scan on each script

	--scan-delay [TIME]
		(Adjust delay between probes) Defines the delay between each probe
	--max-scan-delay [TIME]
		(Adjust delay between probes) Defines the upper limit for delay between each probe

	--min-rate [NUMBER]
		(Directly control the scanning rate) Defines the lower limit for packet sending rate in packets per second
	--max-rate [NUMBER]
		(Directly control the scanning rate) Defines the upper limit for packet sending rate in packets per second

	--defeat-rst-ratelimit
		(Ignore RST rate limit) Sets Nmap to ignore common RST packet response rate limiting
	--defeat-icmp-ratelimit
		(Ignore ICMP rate limit) Sets Nmap to ignore common ICMP packet response rate limiting

FIREWALL/IDS EVASION AND SPOOFING

	-D [ADDRESS|ME|RND[:NUMBER]]...
		(Cloak a scan with decoys) Send packets with spoofed sending IPs to hide your address in a network noise
	--randomize-hosts
		(Randomize target host order) Shuffle each group of up to 16384 hosts before it scans them

	--proxies [[PROTOCOL]://[HOST]:[PORT]]...
		(Relay TCP connections through a chain of proxies) Establish TCP connections with a final target through supplied chain of one or more HTTP or SOCKS4 proxies

	-e [INTERFACE]
		(Use specified interface) Specifies the interface to send and receive packets on
	--spoof-mac [MAC_ADDR]
		(Spoof MAC address) Defines the MAC address to be used
	-S [ADDRESS]
		(Spoof source address) Specifies the IP address of the interface you wish to send packets through, or spoof it, hiding your address
	-g, --source-port [PORT]
		(Spoof source port number) Defines source port for packet sending 

	-f
		(fragment packets) Causes the requested scan to use tiny fragmented IP packets (8-bytes or less after IP header), spliting up the TCP header to make it harder for firewalls, IDS and other annoyances to detect the scanning. Use it again to change from 8 to 16 bytes.
	--mtu [NUMBER]
		(using the specified MTU) Specify your own offset size for the IP packet fragmentation. The offset must be a multiple of eight.

	--ip-options [HEX|[[R|T|U] [L|S] [HOST]...]]
		(Send packets with specified ip options) Provides custom IP options through hex data set in \x followed by the two digits. Follow the value by an asterisk to mutiply its occurence. You may also use R, T, or U respectively for request record-route, record-timestamp, or both. L or S for loose or strict source routing followed by a list of IP addresses.
	--ttl [NUMBER]
		(Set IP TTL field) Defines the IPv4 time-to-live field in sent packets

	--data [HEX]
		(Append binary data to sent packets) Includes binary data payload in sent packets
	--data-string [STRING]
		(Append string data to sent packets) Includes regular string payload in sent packets
	--data-length [NUMBER]
		(Append random data to sent packets) Includes the given number of random bytes as payload sent in packets

	--badsum
		(Send packets with bogus TCP/UDP checksums) Use an invalid TCP, UDP or SCTP checksum for packets sent to target hosts
	--adler32
		(Use Adler32 for SCTP checksums) Use the deprecated Adler32 instead of the CRC-32C algorithm for calculating the SCTP checksum

OUTPUT

	-oN [PATH]
		(normal output) Requests that normal output be directed to the given filename
	-oX [PATH]
		(XML output) Requests that XML output be directed to the given filename
	-oG [PATH]
		(grepable output) Stores the scan output a simple format that lists each host on one line and can be trivially searched and parsed with standard Unix tools
	-oA [PATH]
		(Output to all formats) Store scan results in normal, XML, and grepable formats at once
	
	-oS [PATH]
		(ScRipT KIdd|3 oUTpuT) Similar to interactive output, except that it is post-processed to better suit the l33t HaXXorZ
	
	--append-output
		(Append to output files) Append output to file instead of overwriting it
	--noninteractive
		(Disable runtime interactions) Prevent Nmap taking control of the terminal and responding to keypress (useful when running on the background)
	
	--stylesheet [PATH]
		(Set XSL stylesheet to transform XML output) Change the default nmap.xsl stylesheet for viewing or translating XML output to HTML
	--webxml
		(Load stylesheet from Nmap.Org) Alias for --stylesheet https://nmap.org/svn/docs/nmap.xsl.
	--no-stylesheet
		(Omit XSL stylesheet declaration from XML) Prevent Nmap from associating any XSL stylesheet with its XML output

VERBOSITY AND DEBUGGING

	-v
		(Increase verbosity level) Increases the verbosity level. Can be used multiple times.
	-d
		(Increase debugging level) Increases the debugging level. Can be used multiple times.
	-v[NUMBER]
		(Set verbosity level) Defines the verbosity level directly
	-d[NUMBER]
		(Set debugging level) Defines the debugging level directly

	--open
		(Show only open ports) Do not show ports that are not found as open or possibly open
	--reason
		(Host and port state reasons) Shows the reason for each host and port displayed states
	--packet-trace
		(Trace packets and data sent and received) Print a summary of every packet sent or received
	--stats-every [TIME]
		(Print periodic timing stats) Periodically prints a timing status message after the given interval of time

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

	--resume [PATH]
		(Resume aborted scan) Resume scanning based on the provided file

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

## Files


## Environmental Variables
```bash
VAR=VAL # desc
```


## Relevant Reading
- [[Ethernet|Ethernet]]
- [[Networks/TCP|TCP]]
- [[Networks/UDP|UDP]]
- [[Networks/SCTP|SCTP]]
- [[Networks/ICMP|ICMP]]
- [[Networks/DNS|DNS]]
- [[Networks/ARP|ARP]]
- [[Networks/IP|IP]]

## External Reference
[github.com](https://github.com/nmap/nmap)
[nmap.org](https://nmap.org)
[nmap.org/man](https://nmap.org/book/man.html)
