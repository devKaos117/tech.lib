---
category: protocol
subjects:
  - networks
full_form: Simple Network Management Protocol
acronym: SNMP
---
## Definition
monitoring, configuration tasks and settings on network devices
currently on SNMPv3
commands and information through [[UDP]] port 161
[[UDP]] port 162 for traps
Uses [MIB]{Management Information Base}, a text file containing a hierarchical tree of all queryable objects, each having an [UID]{Unique Identifier}, [OID]{Object Identifier}, a name, it's type information, access rights and a description. These files are written in [ASN.1]{Abstract Syntax Notation One} based ASCII text
[OID]{Object Identifier}s are a numerical representation of a node in a hierarchical namespace
<https://oid-base.com/>
SNMPv1 supports the retrieval of information, allowing for network management and monitoring. It does not support encryption, nor it has built-in [[IAM#Authentication|AuthN]]
SNMPv2 has many versions, but most of them ceased existing. SNMPv2c is community based and it still exists
SNMPv3 implements [[IAM#Authentication|AuthN]] and encryption
/etc/snmp/snmpd.conf
<https://www.ibm.com/docs/en/aix/7.3.0?topic=management-information-base>

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
