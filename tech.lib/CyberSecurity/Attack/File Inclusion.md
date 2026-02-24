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
Similar to the path traversal, but it allows for the inclusion of file a in the application execution

### Local File Inclusion
Allows for the inclusion of a file local to the server. PHP Wrappers:
- `php://filter`: displays the content of files, with or without encodings
	- `php://filter/resource=_PATH_`
	- `php://filter/convert.base64-encode/resource=_PATH_`
- `data://`: embed data elements as plaintext or base64-encoded data in the running web application's code (requires `allow_url_include` to be enabled)
	- `data://text/plain,<?php%20system("id");?>`
	- `data://text/plain;base64,PD9waHAgc3lzdGVtKCJpZCIpOz8+`

### Remote File Inclusion
allow us to include files from a remote system over [[HTTP]] or [[SMB]] (requires `allow_url_include` to be enabled)

### Notes
- executed in server-side
- web
- used to execute arbitrary code
- typically occurs when a web application is not sanitizing user input
- Severity increased when used in conjunction with file upload or log poisoning

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
