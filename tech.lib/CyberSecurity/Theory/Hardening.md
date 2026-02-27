---
category: NULL
subjects:
  - NULL
full_form: NULL
acronym: NULL
---
## Definition
Control Flow Guard
Data Execution Prevention
Address Space Layout Randomization

- File Integrity Monitoring
- Data Loss Prevention
- Network Access Control
- SASE (Security Access Service Edge)

## Antivirus
Antivirus (AV), is a type of application designed to prevent, detect, and remove malicious software. Typically includes additional protections such as IDS/IPS, firewall, website scanners, and more

### Signatures
Signatures are unique identifier of a malware. Signatures can vary in terms of type and characteristics that can span from a very generic file hash summary to a more specific binary sequence match
Signature languages are defined for each AV engine and thus, a signature can represent different aspects of a piece of malware, as it's file on the disk or its network communication
To overcome the limitation of detecting only known and documented threats, modern AVs include [ML]{Machine Learning} engines that are queried when an unknown file is discovered

### Components
- File Engine: responsible for scheduled and real-time file scans
	- scheduled: parses the file system and sends each individual's file metadata to the signature engine
	- real-time: detect and react to any new file action, as a download or decompression (identify events at the kernel level via a mini-filter driver)
- Memory Engine: Inspect each process's memory space at runtime for well-known binary signatures or suspicious API calls
- Network Engine: Inspect network traffic on the local network interface
- Disassembler: disassembles the code and identify any encoding/decoding routine
- Emulator/Sandbox: Special isolated and controlled environment used to load and execute suspicious pieces of software to analyze it against any know signature
- Browser Plugin: To overcome the browser sandboxing and detect malicious software in there, the antivirus employ it's own plugin
- Machine Learning Engine: Enables the detection of unknown threats based on cloud-enhanced computing resources and algorithms

### Detection Methods
- Signature-based: the filesystem is scanned for known malware signatures and if any are detected, the offending files are quarantined
- Heuristic-based: relies on various rules and algorithms to determine if an action is considered malicious
- Behavioral: dynamically analyzes the behavior of a binary file by executing it in an virtual environment
- Machine Learning: use ML algorithms to detect unknown threats by collecting and analyzing additional metadata

## Firewall
- Firewall
	- Stateless Inspection
	- Stateful Inspection
	- Application-level
- Network Flow Analysis
	- NetFlow
	- IPFIX

## Intrusion Detection Systems
- IDS and IPS
	- Network-based
	- Host-based

## Intrusion Prevention Systems

## Web Application Firewall

## Endpoint Detection and Response
Generate security-event telemetry and forward it to the [[Hardening#Security Information and Event Management|SIEM]]

# Extended Detection and Response

## Security Information and Event Management
- SIEM
	- User Behavior Analysis

## Security Orchestration, Automation, and Response

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
