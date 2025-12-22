---
category: model
subjects:
  - networks
full_form: Open Systems Interconnection Model
acronym: OSI Model
---

## Definition
It's the [[Foundations/ISO|ISO]]'s reference model for the coordination and standards of network systems defined in the ISO/IEC 7498, dividing the communication and interoperability into seven abstract layers.

## Layers
### 7. Application
Used to initiate communication with the network, including the protocols and data manipulation processes that convert computer-readable network data into user-readable responses. Being the closest layer to the user, it implements functions as file sharing, message handling, and database access.
_e.g.:_
[[Networks/HTTP|HTTP]] - [[Networks/SSH|SSH]]

### 6. Presentation
Prepares data for the application layer, including data translation, compression and encryption during the encapsulation of outgoing messages, and reversing it during the decapsulation of incoming messages.
_e.g.:_
[[Networks/SSL|SSL]]

### 5. Session
Initiates and terminates connections between two devices interacting on the network, creating the setup, controlling the connections, and ending the tear down. Also establishes procedures for check pointing, suspending, restarting, and terminating a session between two related streams of data.
_e.g.:_

### 4. Transport
Transmits end-to-end data between two devices interacting on the network, making sure that data isn't lost, misconfigured or corrupted. It is divided into five classes, ranging from TP0 up to TP4. Also applies flow control, error control, and acknowledgments of sequence and existence, besides handling service point addressing, flow control and multiplexing.
_e.g.:_
[[TCP|TCP]] - [[UDP|UDP]] - [[Networks/TLS|TLS]]

### 3. Network
Handles data addressing, routing and forwarding processes for devices interacting across different networks, providing functional and procedural means of transferring packets between the nodes. The data is of variable-length and may be segmented accordingly to the data link [MTU]{Maximum Transmission Unit}.
_e.g.:_
[[Networks/NAT|NAT]] - [[ARP|ARP]] - [[IP|IP]]

### 2. Data Link
Manages data routing between two interacting nodes on the same network, applying error correction, being divided into:

- **[MAC]{Medium Access Control} -** Control how devices in a network gain access to a medium and permission to transmit data
- **[LLC]{Logical Link Control} -** Identifies and encapsulates network layer protocols, controlling error checking and frame synchronization
_e.g.:_
[[ARP|ARP]]

### 1. Physical
Comprises the physical assets, managing unstructured raw bit streams over a physical medium. This is where is handled the bit rate, bit synchronization and the transmission mode.
_e.g.:_


## External Reference
[en.wikipedia.org](https://en.wikipedia.org/wiki/OSI_model)
[RFC 1122 - Communication Layers](https://datatracker.ietf.org/doc/html/rfc1122)
[RFC 1123 - Application and Support](https://datatracker.ietf.org/doc/html/rfc1123)