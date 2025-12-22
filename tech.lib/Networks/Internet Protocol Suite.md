---
category: model
subjects:
  - networks
full_form: Internet Protocol Suite
acronym: TCP/IP model
---

## Definition
The TCP/IP Model is a four layered alternative to the [[Networks/OSI Model|OSI Model]], being more practical and easier to fit modern protocols that would disrupt the abstract construction of OSI, spanning across multiple layers.

## Layers
### 4. Application
The application layer combines the [[Networks/OSI Model#5. Session|session]], [[Networks/OSI Model#6. Presentation|presentation]] and [[Networks/OSI Model#7. Application|application]] layers, acting as the interface that effectively allows software communication across networks.
[Application protocols](obsidian://search?vault=tech.lib&query=path%3A%22Networks%2F4%2E%20Application%22)

### 3. Transport
The transport layer mimics the [[Networks/OSI Model#4. Transport|transport]] layer, handling data segmentation, flow control, error management, service point addressing and multiplexing.
[Transport protocols](obsidian://search?vault=tech.lib&query=path%3A%22Networks%2F3%2E%20Transport%22)

### 2. Internet
The internet layer mimics the [[Networks/OSI Model#3. Network|network]] layer, allowing for the transferring of variable length data while assuring the correct addressing of each packet.
[Internet protocols](obsidian://search?vault=tech.lib&query=path%3A%22Networks%2F2%2E%20Internet%22  )

### 1. Interface
The network interface layer combines both the [[Networks/OSI Model#1. Physical|physical]] and [[Networks/OSI Model#2. Data Link|data link]] layers, describing the frames transmission across the physical mediums and the routing between two adjacent nodes in a network.
[Interface protocols](obsidian://search?vault=tech.lib&query=path%3A%22Networks%2F1%2E%20Interface%22)

## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/Internet_protocol_suite)