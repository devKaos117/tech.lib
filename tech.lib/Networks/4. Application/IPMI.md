---
category: protocol
subjects:
  - networks
full_form: Intelligent Platform Management Interface
acronym: IPMI
---
## Definition
set of standardized specifications for hardware-based host management systems used for system management and monitoring
autonomous subsystem that works independently of the host's plataform
requires:
               - Baseboard Management Controller (BMC) - A micro-controller and essential component of an IPMI
               - Intelligent Chassis Management Bus (ICMB) - An interface that permits communication from one chassis to another
               - Intelligent Platform Management Bus (IPMB) - extends the BMC
               - IPMI Memory - stores things such as the system event log, repository store data, and more
               - Communications Interfaces - local system interfaces, serial and LAN interfaces, ICMB and PCI Management Bus
BMC (Baseboard Management Controllers) through UDP port 623
BMCs are basically an embedded ARM running linux, may be built-in the motherboard or added via PCIe
Comparable to direct physical access
IPMI 2.0 specification supports RAKP (RMCP+ Authenticated Key-Exchange Protocol)

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
