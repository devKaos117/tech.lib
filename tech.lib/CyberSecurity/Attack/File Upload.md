---
category: technique
subjects:
  - cybersec
full_form: NULL
acronym: NULL
cwe:
  - NULL
vector: remote/adjacent network/local/client-side
privileges: unauthenticated/authenticated/root
target: NULL
platform:
  - NULL
intent:
  - NULL
---
## Definition
Process of exploiting and leveraging existing file upload capabilities

### Server Executed File
The first category consists of vulnerabilities enabling us to upload files that are executable by the web application
- altering the file extension to a less common one, as from `.php` to `.php7` or `.phtml`
- altering the file extension case to bypass case-sensitive string checks, as from `.php` to `.pHp`

### Common Upload
The second category consists of vulnerabilities that require us to combine the file upload mechanism with another vulnerability, such as Directory Traversal, XXE, XSS, or overwriting files
- always test what happens when we try to upload the same file twice
- if it is possible to know if a file uploaded already exists, it might be possible to brute force the contents of the web server

### Malicious File
The third category relies on user interaction, uploading a `.docx` with malicious macros integrated

### Notes
- executed in server-side
- web
- used to include files in the web server
- typically occurs when a web application is not sanitizing the file input
- easy to bypass when based on blacklisting

## Discovery

## Execution

## Mitigation

## Evasion

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
