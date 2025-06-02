---
full_form: NULL
acronym: NULL
subjects:
  - networks
tags:
  - protocol
  - list
---

## Definition
[[IP]]

## Classification
### By Purpose
#### Interior Gateway Protocols
Used for routing within a single [AS]{Autonomous System}
[[RIP]] - [[IS-IS]] - [[OSPF]] - [[EIGRP]]
#### Exterior Gateway Protocols
Used for routing between different [AS]{Autonomous System}
[[BGP]]

### By Operation
#### Distance Vector Protocols
Routers advertise their routing tables to their directly connected neighbors, learning about distant networks based on the information received from their neighbors. The distance is typically measured in terms of hops
[[RIP]] - [[IGRP]]
#### Link-State Protocols
Each router maintains a complete map of the network topology. They advertise information about their directly connected links to all other routers in the same routing domain and independently calculate the shortest path to all destinations using dedicated algorithms
[[IS-IS]] - [[OSPF]]
#### Path-Vector Protocols
Similar to distance-vector protocols, but also advertising the path taken to reach a destination, allowing for policy-based routing and loop prevention at the inter-[AS]{Autonomous System} level
[[BGP]]
#### Hybrid Protocols
Some protocols combine characteristics of distance-vector and link-state protocols
[[EIGRP]]

### By Behavior
#### Classful Routing Protocols
These protocols do not include subnet mask information in their routing updates, assuming a consistent classful addressing scheme, which is largely obsolete today
[[RIP#RIPv1|RIPv1]] - [[IGRP]]
#### Classless Routing Protocols
These protocols include subnet mask information in their routing updates, supporting [CIDR]{Classless Inter-Domain Routing} and [VLSM]{Variable Length Subnet Masks}. All modern routing protocols are classless
[[RIP#RIPv2|RIPv2]] - [[IS-IS]] - [[OSPF]] - [[BGP]] - [[EIGRP]]

## External References
[en.wikipedia.org](https://en.wikipedia.org/wiki/Routing_protocol)
