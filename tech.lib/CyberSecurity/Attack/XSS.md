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
Vulnerability that exploits a website improper input sanitization to dynamically inject content into the page [DOM]{Document Object Model}, therefore reaching [RCE]{Remote Code Evaluation} upon rendering on the user's browser

- **Persistent:** The exploit payload is stored in a database or otherwise cached by a server, so every visitor retrieves that payload and executes it
- **Reflected:** The payload is included in a crafted request or link, only attacking the client that submitted this request
- **DOM-based:** The payload never reach the server, being entirely received and executed by the client

## Discovery
dynamic content from request parameters or data that alters the page
eval calls

## Execution
src tag properties to force request

1. Construct the payload

```js
alert(window.origin);
```

1. Encode and encapsulate it for delivery

```js
eval(String.fromCharCode(97,108,101,114,116,40,119,105,110,100,111,119,46,111,114,105,103,105,110,41,59));
eval(atob("YWxlcnQod2luZG93Lm9yaWdpbik7"));
eval("\x61\x6c\x65\x72\x74\x28\x77\x69\x6e\x64\x6f\x77\x2e\x6f\x72\x69\x67\x69\x6e\x29\x3b");
document.head.appendChild(Object.assign(document.createElement("script"),{src:"data:text/javascript;base64,YWxlcnQod2luZG93Lm9yaWdpbik7"}));
```

1. Inject into the vulnerable parameter

```bash
curl -s URL -A '<script>PAYLOAD</script>'
```

## Mitigation
client-side input validation and sanitization
<https://github.com/cure53/DOMPurify>
ensure that there are no user input directly into html tags (validate which ones)
server-side input validation and sanitization
server-side HTML output encoding
server configs:
- Using HTTPS across the entire domain
- Using XSS prevention headers
- Using the appropriate Content-Type for the page, like `X-Content-Type-Options=nosniff`
- Using `Content-Security-Policy` options, like `script-src 'self'`, which only allows locally hosted scripts
- Using the `HttpOnly` and `Secure` cookie flags to prevent JavaScript from reading cookies and only transport them over HTTPS
WAF

## Evasion
img tags (onerror)

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
