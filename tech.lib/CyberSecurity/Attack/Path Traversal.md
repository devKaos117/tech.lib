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
Abusing file inclusion set in the request to perform arbitrary read
- change the char encoding, as by replacing the `.` with `%2e`

### Notes
- executed in server-side
- web
- used to perform arbitrary read
- typically occurs when a web application is not sanitizing user input
- bypass filters by encoding the payload

## Discovery

## Execution

## Mitigation

## Evasion
HTTP Verb Tampering

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
