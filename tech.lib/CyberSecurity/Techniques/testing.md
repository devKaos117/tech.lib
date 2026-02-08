## XSS
Cross-Site Scripting is a vulnerability that exploits a user's trust in a website by dynamically injecting content into the page rendered by the user's browser.
- **Stored (Persistent):** the exploit payload is stored in a database or otherwise cached by a server, so every visitor retrieves that payload and executes it
- **Reflected:** the payload is included in a crafted request or link, only attacking the client that submitted this request
- **DOM-based:** the payload never reach the server, being entirely received and executed by the client

### Notes
- executed in the client-side
- persistent is stored in server-side
- both persistent and reflected originates from a servers input that was not sanitized, but DOM is purely client-side
- web
- os agnostic
- can be used to steal cookies, tokens and other session information, besides sensitive data
