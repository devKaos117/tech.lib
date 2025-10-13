---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: curl
category: command
tags:
  - linux/cmds/network/sending
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] curl

> [!info] Transfers data from or to a server

Transfer data from or to a server using URLs ([[RFC]] 3986). Supported protocols: [[Compendium/Protocols/DICT]], [[Compendium/Protocols/FILE]], [[Compendium/Protocols/FTP]], [[Compendium/Protocols/FTP#FTPS|FTPS]], [[Compendium/Protocols/GOPHER]], [[Compendium/Protocols/GOPHER#GOPHERS|GOPHERS]], [[Compendium/Protocols/HTTP]], [[Compendium/Protocols/HTTP#HTTPS|HTTPS]], [[Compendium/Protocols/IMAP]], [[Compendium/Protocols/IMAP#IMAPS|IMAPS]], [[Compendium/Protocols/LDAP]], [[Compendium/Protocols/LDAP#LDAPS|LDAPS]], [[Compendium/Protocols/MQTT]], [[Compendium/Protocols/POP3]], [[Compendium/Protocols/POP3#POP3S|POP3S]], [[Compendium/Protocols/RTMP]], [[Compendium/Protocols/RTMP#RTMPS|RTMPS]], [[Compendium/Protocols/RTSP]], [[Compendium/Protocols/SCP]], [[Compendium/Protocols/SSH#SFTP|SFTP]], [[Compendium/Protocols/SMB]], [[Compendium/Protocols/SMB#SMBS|SMBS]], [[Compendium/Protocols/SMTP]], [[Compendium/Protocols/SMTP#SMTPS|SMTPS]], [[Compendium/Protocols/TELNET]], [[Compendium/Protocols/Telnet#TFTP|TFTP]], [[Compendium/Protocols/WS]] and [[Compendium/Protocols/WS#WSS|WSS]]

## Favorite Uses
```sh
curl -v -X POST --json '{"var":"val"}' -A 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0)' --url URL
```

## Command
```txt
curl [OPTIONS]... [URL]

AUTHENTICATION OPTIONS

	-u, --user [USER]:[PASSWORD]
		Specify the username and password to use for server authentication
	-U, --proxy-user [USER]:[PASSWORD]
		Specify the username and password to use for proxy authentication
	
	-n, --netrc
		Scan the .netrc file in the user's home directory for login name and password
	--netrc-file [PATH]
		Similar to --netrc, but specifying the netrc file to use
	
	--krb [clear|safe|confidential|private]
		(FTP) Enable Kerberos authentication and use
	--ssl
		(FTP) (IMAP) (POP3) (SMTP) (LDAP) Try to use SSL/TLS for the connection. Reverts to a non-secure connection if the server does not support SSL/TLS
	-t, --telnet-option [TTYPE|XDISPLOC|NEW_ENV]=[VALUE]
		Pass options to the telnet protocol
	
	--pubkey [PATH]
		(SFTP) (SCP) Allows you to provide your public key through separate file
	
	--key [PATH]
		(TLS) (SSH) Private key filename. Allows you to provide your private key in this separate file
	--pass [STRING]
		(SSH) (TLS) Passphrase for the private key
	--key-type [DER|PEM|ENG]
		(TLS) Specify which type your --key provided private key is
	
	-x, --proxy [PROTOCOL]://[HOST]:[PORT]
		Use the specified proxy
	--proxy-key [STRING]
		Same as --key but used in HTTPS proxy context
	--proxy-pass [STRING]
		Same as --pass but used in HTTPS proxy context
	--proxy-key-type [DER|PEM|ENG]
		Same as --key-type but used in HTTPS proxy context
	
	--anyauth
		(HTTP) Figure out authentication method automatically, and use the most secure one the remote site claims to support. This is done by first doing a request and checking the response-headers, thus possibly inducing an extra network round-trip
	--aws-sigv4 [PROVIDER1]:[PROVIDER2]:[REGION]:[SERVICE]
		(HTTP) Use AWS V4 signature authentication in the transfer

CERTIFICATE OPTIONS

	-E, --cert [CERTIFICATE]:[PASSWORD]
		(TLS) Use the specified client CERTIFICATE file when getting a file with HTTPS, FTPS or another SSL-based protocol. The certificate must be in PKCS#12 format if using Secure Transport, or PEM format if using any other engine
	--proxy-cert [CERTIFICATE]:[PASSWORD]
		Same as --cert but used in HTTPS proxy context
	
	--cert-status
		(TLS) Verify the status of the server certificate by using the Certificate Status Request TLS extension
	--cacert [PATH]
		(TLS) Use the specified certificate file to verify the peer. The file may contain multiple CA certificates. The certificates must be in PEM format
	--capath [PATH]
		(TLS) Use the specified certificate directory to verify the peer. Multiple paths can be provided in a colon separated list. The certificates must be in PEM format

INPUT OPTIONS

	--url [URL]
		Specify a URL to fetch
	--url-query [STRING|@PATH]
		Add a piece of data, usually a name + value pair, to the end of the URL query part
	-:, --next
		Use a separate operation for the following URL and associated options. This allows you to send several URL requests, each with their own specific options
	
	-d, --data [STRING]
		(HTTP) (MQTT) Sends the specified data in a POST request to the HTTP server, in the same way that a browser does when a user has filled in an HTML form and presses the submit button
	--json [STRING|@PATH]
		(HTTP) Sends the specified JSON data in a POST request to the HTTP server
	
	--data-raw [STRING]
		(HTTP) Post data similarly to -d, --data but without the special interpretation of the @ character
	--data-binary [STRING]
		(HTTP) Post data exactly as specified with no extra processing whatsoever
	--data-urlencode [STRING]
		(HTTP) Post data, similar to the other -d, --data options with the exception that this performs URL-encoding
	-G, --get
		(HTTP) Makes all data specified with --data, --data-binary or --data-urlencode to be used in an HTTP GET request instead of the POST request that otherwise would be used, appending it to the URL with a '?' separator-I
	
	-F, --form [STRING]
		(HTTP) (SMTP) (IMAP) For the HTTP protocol family, emulate a filled-in form in which a user has pressed the submit button (RFC 2388). For SMTP and IMAP protocols, this composes a multipart mail message to transmit
	--form-string [STRING]
		(HTTP) (SMTP) (IMAP) Similar to --form except that the value string for the named parameter is used literally. Leading @ and < characters, and the ";type=" string in the value have no special meaning

OUTPUT OPTIONS

	-o, --output [PATH]
		Write output to the given file instead of stdout. If you are using globbing to fetch multiple documents, quote the URL and you can use "#" followed by a number in the filename, which will be replaced with the current string for the URL being fetched
	--output-dir [PATH]
		Specify the directory in which files should be stored
	--no-clobber
		When used in conjunction with the --output, -O, avoids overwriting files that already exist. Instead, a dot and a number gets appended to the name of the file that would be created, up to filename.100 after which it does not create any file
	-N, --no-buffer
		Disables the buffering of the output stream
	-Z, --parallel
		Makes curl perform its transfers in parallel as compared to the regular serial manner
	
	--trace [PATH]
		Save a full trace dump of all incoming and outgoing data, including descriptive information, in the given output file
	-v, --verbose
		Makes curl verbose during the operation. A line starting with > means header data sent by curl, < means header data received by curl that is hidden in normal cases, and * means additional info provided by curl
	-f, --fail
		(HTTP) Fail fast with no output at all on server errors, returning an error 22 instead of the default HTML document stating the fail
	-w, --write-out [PATTERN|@PATH]
		Make curl display information on stdout after a completed transfer
	-M, --manual
		Outputs the command manual
	-h, --help [all|category|auth|connection|curl|dns|file|ftp|http|imap|misc|output|pop3|post|proxy|scp|sftp|smtp|ssh|telnet|tftp|tls|ech|upload|verbose]
		Display the help information and exit. List all curl command line options within the given category. If no argument is provided, displays the most important command line arguments
	-V, --version
		Output version information and exit
	--xattr
		When saving output to a file, tell curl to store file metadata in extended file attributes
	
	--head
		(HTTP) (FTP) Fetch the headers only
	-i, --include
		(HTTP) (FTP) Include response headers in the output
	-l, --list-only
		(FTP) (POP3) (SFTP) When listing an FTP directory, force a name-only view
	
	--compressed
		(HTTP) Request a compressed response using one of the algorithms curl supports, and automatically decompress the content
	--raw
		(HTTP) When used, it disables all internal HTTP decoding of content or transfer encodings and instead makes them passed on unaltered, raw
	
	-s, --silent
		Silent or quiet mode. Do not show progress meter or error messages
	-S, --show-error
		When used with --silent, shows an error message if it fails
	-#, --progress-bar
		Make curl display transfer progress as a simple progress bar instead of the standard, more informational, meter
	--styled-output, --no-styled-output
		Enable or disable automatic use of bold font styles when writing HTTP headers to the terminal

GENERAL CONFIGURATIONS OPTIONS

	-K, --config [PATH]
		Specify a text file to read curl arguments from. The command line arguments found in the text file are used as if they were provided on the command line
	--interface [INTERFACE]
		Perform an operation using a specified interface. You can enter interface name, IP address or hostname
	--proto [=|+|-][all|PROTOCOL_NAME]
		Limit what protocols to allow for transfers. Protocols are evaluated left to right, comma separated
	
	-4, --ipv4
		Use IPv4 addresses only when resolving hostnames
	-6, --ipv6
		Use IPv6 addresses only when resolving hostnames
	--dns-servers [STRING]
		Set the list of DNS servers to be used instead of the system default. The list of IP addresses should be separated with commas
	
	--limit-rate [NUMBER][k|M|G|T|P]
		Specify the maximum transfer rate you want curl to use for both downloads and uploads
	--rate [NUMBER][s|m|h|d]
		Specify the maximum request rate to use (transfer starts per time unit)
	
	--connect-timeout [NUMBER]
		Maximum time in seconds that you allow curl's connection to take. This only limits the connection phase, so if curl connects within the given period it continues
	--no-keepalive
		Disables the use of keepalive messages on the TCP connection
	--retry [NUMBER]
		If a transient error is returned when curl tries to perform a transfer, it retries this number of times before giving up. Setting the number to 0 makes curl do no retries (default: 0)
	--retry-all-errors
		Retry on any error. This option is used together with --retry
	--retry-delay [NUMBER]
		Make curl sleep NUMBER seconds before each retry when a transfer has failed with a transient error

REQUEST DATA OPTIONS

	-H, --header [STRING|@PATH]
		(HTTP) (IMAP) (SMTP) Extra header to include in information sent
	-A, --user-agent [STRING]
		(HTTP) Specify the User-Agent string to send to the HTTP server. To encode blanks in the string, surround the string with single quote marks
	-b, --cookie [[PATH]|'[DATA]'] [NAME]
		(HTTP) Pass the data to the HTTP server in the Cookie header
	-c, --cookie-jar [PATH]
		(HTTP) Specify to which file you want curl to write all cookies after a completed operation
	
	
	-X, --request [HTTP|FTP|POP3|IMAP|SMTP]
		Change the method to use when starting the transfer
	-0, --http1.0
		(HTTP) Use HTTP version 1.0 instead of using its internally preferred HTTP versions
	--http1.1
		(HTTP) Use HTTP version 1.1
	--http2
		(HTTP) Use HTTP/2
	--http2-prior-knowledge
		(HTTP) Issue a non-TLS HTTP requests using HTTP/2 directly without HTTP/1.1 Upgrade
	--http3
		(HTTPS) Attempt HTTP/3 to the host in the URL, but fallback to earlier HTTP versions if the HTTP/3 connection establishment fails
	--http3-only
		(HTTPS) Instructs curl to use HTTP/3 to the host in the URL, with no fallback to earlier HTTP versions
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/curl/curl)
[curl.se](https://curl.se/)
[linux.die.net](https://linux.die.net/man/1/curl)
