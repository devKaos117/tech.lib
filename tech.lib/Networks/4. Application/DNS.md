---
category: protocol
subjects:
  - networks
full_form: Domain Name System
acronym: DNS
---
## Definition
The [DNS]{Domain Name System} is a distributed and hierarchical database system designed to map human-readable [[DNS#Fully Qualified Domain Name|FQDNs]] to machine-readable identifiers (primarily [[IP]] addresses). It operates as a critical infrastructure component through a tripartite architecture:
- **Domain Name Space:** The hierarchical tree structured name space where the [[DNS#Resource Records|resource records]] are stored
- **Name Servers:** A server that holds information about the Domain Name Space, which is composed of two kinds of data:
	- **Authoritative:** The zones are complete databases for a particular subtree of a domain space
	- **Cached:** Incomplete piece of data recently acquired by a local resolver, it is stored in cache to improve efficiency and retrieve times
- **Resolvers:** A program that extract information from name servers in answer to a request, usually originated from an OS call in its own host

## DNS Packet

```mermaid
packet-beta
0-15: "1"
16-17: "2.1"
18-19: "2.2"
20-21: "2.3"
22-23: "2.4"
24-25: "2.5"
26-27: "2.6"
28-29: "2.7"
30-31: "2.8"
32-47: "3"
48-63: "4"
64-79: "5"
80-95: "6"
```

1. **Transaction ID \[0x00: 16b\]:**
2. **Flags \[0x10: 16b\]:**
	1. **QR \[0x10: 2b\]:**
	2. **Opcode \[0x12: 2b\]:**
	3. **AA \[0x14: 2b\]:**
	4. **TC \[0x16: 2b\]:**
	5. **RD \[0x17: 2b\]:**
	6. **RA \[0x1a: 2b\]:**
	7. **Z \[0x1c: 2b\]:**
	8. **RCODE \[0x1e: 2b\]:**
3. **QDCOUNT \[0x20: 0b\]:**
4. **ANCOUNT \[0x30: 0b\]:**
5. **NSCOUNT \[0x40: 0b\]:**
6. **ARCOUNT \[0x50: 0b\]:**

## DNS Query
INSERT THE QUERYING PROCESS WITH DIAGRAMS

```txt
                 Local Host                        |  Foreign
                                                   |
    +---------+               +----------+         |  +--------+
    |         | user queries  |          |queries  |  |        |
    |  User   |-------------->|          |---------|->|Foreign |
    | Program |               | Resolver |         |  |  Name  |
    |         |<--------------|          |<--------|--| Server |
    |         | user responses|          |responses|  |        |
    +---------+               +----------+         |  +--------+
                                |     A            |
                cache additions |     | references |
                                V     |            |
                              +----------+         |
                              |  cache   |         |
                              +----------+         |
```

```txt
                 Local Host                        |  Foreign
                                                   |
      +---------+                                  |
     /         /|                                  |
    +---------+ |             +----------+         |  +--------+
    |         | |             |          |responses|  |        |
    |         | |             |   Name   |---------|->|Foreign |
    |  Master |-------------->|  Server  |         |  |Resolver|
    |  files  | |             |          |<--------|--|        |
    |         |/              |          | queries |  +--------+
    +---------+               +----------+         |
```

host that supports all aspects of the domain name system

```txt
                 Local Host                        |  Foreign
                                                   |
    +---------+               +----------+         |  +--------+
    |         | user queries  |          |queries  |  |        |
    |  User   |-------------->|          |---------|->|Foreign |
    | Program |               | Resolver |         |  |  Name  |
    |         |<--------------|          |<--------|--| Server |
    |         | user responses|          |responses|  |        |
    +---------+               +----------+         |  +--------+
                                |     A            |
                cache additions |     | references |
                                V     |            |
                              +----------+         |
                              |  Shared  |         |
                              | database |         |
                              +----------+         |
                                A     |            |
      +---------+     refreshes |     | references |
     /         /|               |     V            |
    +---------+ |             +----------+         |  +--------+
    |         | |             |          |responses|  |        |
    |         | |             |   Name   |---------|->|Foreign |
    |  Master |-------------->|  Server  |         |  |Resolver|
    |  files  | |             |          |<--------|--|        |
    |         |/              |          | queries |  +--------+
    +---------+               +----------+         |
                                A     |maintenance |  +--------+
                                |     +------------|->|        |
                                |      queries     |  |Foreign |
                                |                  |  |  Name  |
                                +------------------|--| Server |
                             maintenance responses |  +--------+
```

### Reverse Query
DESCRIBE REVERSE QUERY

## Resource Records
### Structure
DRAW TREE LIKE STRUCTURE

### Fully Qualified Domain Name

### Records
- **NS**: Nameserver records contain the name of the authoritative servers hosting the DNS records for a domain.
- **A**: Also known as a host record, the "_a record_" contains the IPv4 address of a hostname (such as <www.megacorpone.com>).
- **AAAA**: Also known as a quad A host record, the "_aaaa record_" contains the IPv6 address of a hostname (such as <www.megacorpone.com>).
- **MX**: Mail Exchange records contain the names of the servers responsible for handling email for the domain. A domain can contain multiple MX records.
- **PTR**: Pointer Records are used in reverse lookup zones and can find the records associated with an IP address.
- **CNAME**: Canonical Name Records are used to create aliases for other host records.
- **TXT**: Text records can contain any arbitrary data and be used for various purposes, such as domain ownership verification.

## Relevant Reading
- [[Internet Protocol Suite#4. Application|Application layer]]

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Domain_Name_System)
[RFC1034 - DNS Concept](https://datatracker.ietf.org/doc/html/rfc1034)
[RFC1035 - DNS Implementation](https://datatracker.ietf.org/doc/html/rfc1035)
[RFC2181 - DNS Classifications](https://datatracker.ietf.org/doc/html/rfc2181)
[RFC2308 - DNS Ncache](https://datatracker.ietf.org/doc/html/rfc2308)
[RFC4033 - DNSSEC Introduction](https://datatracker.ietf.org/doc/html/rfc4033)
[RFC4034 - Records for DNSSEC Extensions](https://datatracker.ietf.org/doc/html/rfc4034)
[RFC5936 - DNS AXFR](https://datatracker.ietf.org/doc/html/rfc5936)
[RFC6895 - DNS IANA Considerations](https://datatracker.ietf.org/doc/html/rfc6895)
[iana.org/dns-parameters](https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml)
