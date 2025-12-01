---
category: concept
subjects:
  - networks
full_form: NULL
acronym: NULL
---

## Definition
[[Networks/IP|IP]]

## Classification
### By Purpose
#### Interior Gateway Protocols
Used for routing within a single [AS]{Autonomous System}
[[Networks/RIP|RIP]] - [[Networks/IS-IS|IS-IS]] - [[Networks/OSPF|OSPF]] - [[Networks/EIGRP|EIGRP]]
#### Exterior Gateway Protocols
Used for routing between different [AS]{Autonomous System}
[[Networks/BGP|BGP]]

### By Operation
#### Distance Vector Protocols
Routers advertise their routing tables to their directly connected neighbors, learning about distant networks based on the information received from their neighbors. The distance is typically measured in terms of hops
[[Networks/RIP|RIP]] - [[Networks/IGRP|IGRP]]
#### Link-State Protocols
Each router maintains a complete map of the network topology. They advertise information about their directly connected links to all other routers in the same routing domain and independently calculate the shortest path to all destinations using dedicated algorithms
[[Networks/IS-IS|IS-IS]] - [[Networks/OSPF|OSPF]]
#### Path-Vector Protocols
Similar to distance-vector protocols, but also advertising the path taken to reach a destination, allowing for policy-based routing and loop prevention at the inter-[AS]{Autonomous System} level
[[Networks/BGP|BGP]]
#### Hybrid Protocols
Some protocols combine characteristics of distance-vector and link-state protocols
[[Networks/EIGRP|EIGRP]]

### By Behavior
#### Classful Routing Protocols
These protocols do not include subnet mask information in their routing updates, assuming a consistent classful addressing scheme, which is largely obsolete today
[[Networks/RIP#RIPv1|RIPv1]] - [[Networks/IGRP|IGRP]]
#### Classless Routing Protocols
These protocols include subnet mask information in their routing updates, supporting [CIDR]{Classless Inter-Domain Routing} and [VLSM]{Variable Length Subnet Masks}. All modern routing protocols are classless
[[Networks/RIP#RIPv2|RIPv2]] - [[Networks/IS-IS|IS-IS]] - [[Networks/OSPF|OSPF]] - [[Networks/BGP|BGP]] - [[Networks/EIGRP|EIGRP]]

## External References
[en.wikipedia.org](https://en.wikipedia.org/wiki/Routing_protocol)