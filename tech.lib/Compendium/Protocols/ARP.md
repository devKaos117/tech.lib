---
full_form: Address Resolution Protocol
acronym: ARP
subjects:
  - Networks
tags:
  - Protocol
---

## Definition
The ARP is a network protocol used by devices on a [LAN]{Local Area Network} to resolve [[IP#IPv4|IPv4]] addresses to their corresponding [[Ethernet]] [[MAC]] addresses. ARP operates at the [[OSI Model#3. Network|Network Layer]] in conjunction with the [[OSI Model#2. Data Link|Data Link Layer]].

## ARP Frame
The size of the ARP frame depends on the link layer and network layer address sizes
1. **[HTYPE](https://www.iana.org/assignments/arp-parameters/arp-parameters.xhtml#arp-parameters-2) \[0x00: 2B\]:** Specifies the [[OSI Model#2. Data Link|Data Link]] protocol type
	- `0x01`: [[Ethernet]]
	- `0x1E`: [[ARP#ARPSec|ARPSec]]
	- `0x1F`: [[IP#IPsec|IPSec]] tunnel
2. **PTYPE \[0x02: 2B\]:** Specifies the [[OSI Model#3. Network|Network]] protocol through an [[Ethernet#EtherType|EtherType]]
3. **HLEN \[0x04: 1B\]:** Specifies the [[OSI Model#2. Data Link|Data Link]] protocol address length in bytes (6B for [[MAC]] )
4. **PLEN \[0x05: 1B\]:** Specifies the [[OSI Model#3. Network|Network]] protocol address length in bytes (4B for [[IP#IPv4|IPv4]])
5. **[OPER]((https://www.iana.org/assignments/arp-parameters/arp-parameters.xhtml#arp-parameters-3)) \[0x06: 2B\]:** Specifies the operation that the sender is performing
	- `0x01`: Request
	- `0x02`: Reply
6. **[SHA]{Sender Hardware Address} \[0x08: HLEN\]:** The [[OSI Model#2. Data Link|Data Link]] protocol address. During the reply its the requested address instead
7. **[SPA]{Sender Protocol Address} \[0x08 + HLEN: PLEN\]:** The sender [[OSI Model#3. Network|Network]] protocol address
8. **[THA]{Target Hardware Address} \[0x08 + HLEN + PLEN: HLEN\]:** The requested [[OSI Model#2. Data Link|Data Link]] protocol address (usually filled with 0's). During the reply its the host address instead
9. **[TPA]{Target Protocol Address} \[0x08 + 2$\cdot$HLEN + PLEN: PLEN\]:** The [[OSI Model#2. Data Link|Data Link]] protocol address of the requested device

## ARPSec


## External References
[en.wikipedia.org](https://en.wikipedia.org/wiki/Address_Resolution_Protocol)
[fortinet.com](https://www.fortinet.com/resources/cyberglossary/what-is-arp)
[datatracker.ietf.org/rfc826](https://datatracker.ietf.org/doc/html/rfc826)
[datatracker.ietf.org/rfc1122#ARP](https://datatracker.ietf.org/doc/html/rfc1122#page-22)
