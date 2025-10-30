---
category: protocol
subjects:
  - networks
full_form: User Datagram Protocol
acronym: UDP
tags:
  - networks/protocol/transport
---

## Definition
One of the core protocols of the internet suite, UDP is a connectionless protocol that maximizes speed and efficiency at the cost of [[Networks/TCP|TCP]] reliability and error detection. It provides a datagram mode of packet-switched computer communication on top of the [[Networks/IP|IP]]

## UDP Datagram
```mermaid
packet-beta
0-15: "1"
16-31: "2"
32-47: "3"
48-63: "4"
64-95: "5"
```

1. **Source Port \[0x00: 2B\]:** Optional field indicating the sending port of the source
2. **Destination Port \[0x02: 2B\]:** Indicates the destination port
3. **Length \[0x04: 2B\]:** The packet length in bytes
4. **Checksum \[0x06: 2B\]:** A zero padded one's complement of the one's complement sum of a [[Networks/UDP#Pseudo-Header|pseudo-header]] and the UDP header and data
5. **Data \[0x08: 0~1472B\]:** The data transmitted

### Pseudo-Header
Being composed of fields from the IP header and the UDP header, this is a conceptual construct used in the calculation of the UDP checksum

```mermaid
packet-beta
0-31: "1"
32-63: "2"
64-71: "3"
72-79: "4"
80-95: "5"
```

1. **Source IP Address [0x00: 4B]:** Source [[Networks/IP|IP]] address
2. **Destination IP Address [0x04: 4B]:** Destination [[Networks/IP|IP]] address
3. **Zeroes [0x08: 1B]:** 8 bits long 0-padding
4. **Protocol [0x09: 1B]:** Protocol number for UDP (``0x11``)
5. **UDP Length [0x0A: 2B]:** The packet length in bytes

## External References
- [en.wikipedia.org](https://en.wikipedia.org/wiki/User_Datagram_Protocol)
- [datatracker.ietf.org/rfc768](https://datatracker.ietf.org/doc/html/rfc768)