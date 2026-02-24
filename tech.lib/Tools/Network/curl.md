---
category: cli
subjects:
  - binary
language: c
package: curl
tags:
  - linux/cmds/network/sending
---

`$= dv.el('span',dv.current().file.mtime)`

> [!package] curl

> [!info] Transfers data from or to a server

Transfer data from or to a server using URLs ([RFC3986 - URI](https://datatracker.ietf.org/doc/html/rfc3986)). Supported protocols: [[Networks/DICT|DICT]], [[Networks/FILE|FILE]], [[Networks/FTP|FTP]], [[Networks/FTP#FTPS|FTPS]], [[Networks/GOPHER|GOPHER]], [[Networks/GOPHER#GOPHERS|GOPHERS]], [[Networks/HTTP|HTTP]], [[Networks/HTTP#HTTPS|HTTPS]], [[Networks/IMAP|IMAP]], [[Networks/IMAP#IMAPS|IMAPS]], [[Networks/LDAP|LDAP]], [[Networks/LDAP#LDAPS|LDAPS]], [[Networks/MQTT|MQTT]], [[Networks/POP3|POP3]], [[Networks/POP3#POP3S|POP3S]], [[Networks/RTMP|RTMP]], [[Networks/RTMP#RTMPS|RTMPS]], [[Networks/RTSP|RTSP]], [[Networks/SCP|SCP]], [[Networks/SSH#SFTP|SFTP]], [[Networks/SMB|SMB]], [[Networks/SMB#SMBS|SMBS]], [[Networks/SMTP|SMTP]], [[Networks/SMTP#SMTPS|SMTPS]], [[Networks/TELNET|TELNET]], [[Networks/Telnet#TFTP|TFTP]], [[Networks/WS|WS]] and [[Networks/WS#WSS|WSS]]

## Favorite Uses

```sh
curl -v -X POST --json '{"var":"val"}' -A 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0)' --url URL
```

## Command

```txt
curl [OPTIONS]... [URL]

CONNECTION
	PROTOCOL
		-x, --proxy [URL]
			Use the given proxy
		--proto [=|+|-][all|PROTOCOL]
			Specify which protocols to allow for transfers. Protocols are evaluated left to right, comma separated
		--ssl
			Attempts to use SSL/TLS for the connection
		-t, --telnet-option [TTYPE|XDISPLOC|VAR]=[VAL]
			Pass options to the telnet protocol

	ADDRESSING
		--url [URL|@PATH]
			Provide a URL to fetch
		--interface [INTERFACE]
			Specify the interface to use
		-4, --ipv4
			Use IPv4 addresses when resolving hostnames
		-6, --ipv6
			Use IPv6 addresses when resolving hostnames
		--dns-servers [URL]...
			Provide a DNS server to be used

	AUTHENTICATION
		-u, --user [USR]:[PWD]
			Provide credentials for server authentication
		-U, --proxy-user [USR]:[PWD]
			Provide credentials for proxy authentication
		-n, --netrc
			Scan the .netrc file in the user's home directory for login name and password
		--netrc-file [PATH]
			Specify the netrc file to use
		--krb [clear|safe|confidential|private]
			Enable Kerberos authentication
		--anyauth
			Figure out authentication method automatically
		--aws-sigv4 [URI]
			Use AWS V4 signature authentication in the transfer

OPTIMIZATION
	PARALLELISM
		-Z, --parallel
			Perform transfers in parallel instead of the regular serial manner

	TIME
		--rate [NUMBER][s|m|h|d]
			Specify the maximum request rate to use
		--connect-timeout [NUMBER]
			Specify the connection timeout in seconds

	RESOURCES
		--limit-rate [BYTES]
			Specify the maximum transfer rate for both downloads and uploads
		--compressed
			Request a compressed response using one of the algorithms curl supports, and automatically decompress the content
		--raw
			Disable all internal HTTP decoding of content or transfer encodings and instead makes them passed on unaltered, raw

BEHAVIOUR
	SSL/TLS
		--cert-status
			Verify the status of the server certificate by using the Certificate Status Request TLS extension
		--cacert [PATH]
			Use the specified certificate file to verify the peer. The file may contain multiple CA certificates. The certificates must be in PEM format
		--capath [PATH]
			Use the specified certificate directory to verify the peer. Multiple paths can be provided in a colon separated list. The certificates must be in PEM format

		-E, --cert [PATH[:PWD]]
			Use the specified client certificate file when getting a file with an SSL-based protocol. The certificate must be in PKCS#12 or PEMengine

		--pubkey [PATH]
			Provide your public key through separate file

		--key [PATH]
			Provide your private key through separate file
		--pass [STRING]
			Provide the passphrase for the private key
		--key-type [DER|PEM|ENG]
			Specify the format of your provided private key

		--proxy-cert [PATH[:PWD]]
			Use the specified client certificate file for the HTTPS proxy
		--proxy-key [STRING]
			Provide the key to your HTTPS proxy certificate file
		--proxy-pass [STRING]
			Provide the passphrase to your HTTPS proxy certificate file
		--proxy-key-type [DER|PEM|ENG]
			Specify the format of your HTTPS proxy certificate file

	RETRY
		--retry [NUMBER]
			Specify the amount of retries
		--retry-all-errors
			Retry on any error
		--retry-delay [NUMBER]
			Provide a delay in seconds for retries
		--no-keepalive
			Disables the use of keepalive messages on the TCP connection
		-f, --fail
			Fail fast with no output at all on server errors, returning an error 22 instead of the default HTML document stating the fail

	REQUEST
		-X, --request [METHOD]
			Specify the method to use
		-I, --head
			Fetch the headers only
		-0, --http1.0
			Use HTTP version 1.0
		--http1.1
			Use HTTP version 1.1
		--http2
			Use HTTP/2
		--http2-prior-knowledge
			Issue a non-TLS HTTP requests using HTTP/2 directly without HTTP/1.1 Upgrade
		--http3
			Attempt HTTP/3 to the host in the URL, but fallback to earlier HTTP versions
		--http3-only
			Force the use of HTTP/3

		-H, --header [[VAR:VAL]|@PATH]
			Provide an additional header
		-A, --user-agent [STRING]
			Specify the User-Agent
		-b, --cookie [[PATH]|[VAR=VAL]...]
			Provide a Cookie
		-c, --cookie-jar [PATH]
			Provide a cookie-jar to be used

		--url-query [VAR=VAL]...
			Provide the URL query values
		-d, --data [STRING]
			Sends the given data
		--data-raw [STRING]
			Sends the given data without any special interpretation
		--data-binary [STRING]
			Sends the given data exactly as given with no extra processing whatsoever
		--data-urlencode [STRING]
			Sends the given data with URL encoding
		--json [STRING|PATH]
			Sends the given JSON data
		-G, --get
			Send all of the given data through the URL query

		-F, --form [VAR=[VAL|PATH]]
			Emulate a filled-in form in which a user has pressed the submit button
		--form-string [VAR=STRING]
			Emulate a filled-in form in which a user has pressed the submit button, but the value string for the named parameter is used literally

		-l, --list-only
			Force a name-only view when listing an FTP directory
		-:, --next
			Use a separate operation for the following URL and associated options

OUTPUT
	DESTINATION
		-o, --output [PATH]
			Write output to the given file instead of stdout
		--output-dir [PATH]
			Specify the directory in which files should be stored
		--no-clobber
			Avoids overwriting files that already exist by appending a dot and a number to the filename (up to 100)

		-w, --write-out [PATTERN|PATH]
			Make curl display information on stdout after a completed transfer
		-N, --no-buffer
			Disables the buffering of the output stream

	FORMAT
		--xattr
			Store file metadata in extended file attributes

	VERBOSITY
		--trace [PATH]
			Save a full trace dump of all incoming and outgoing data, including descriptive information, in the given output file

		-v, --verbose
			Increase verbosity
		-s, --silent
			Enable silent mode, not showing progress meter or error messages
		-S, --show-error
			Shows an error message in case of failure
		-i, --show-headers
			Include response headers in the output
		-#, --progress-bar
			Display transfer progress as a simple progress bar instead of the standard, more informational, meter
		--styled-output
			Enable automatic use of bold font styles when writing HTTP headers to the terminal

CONFIGURATION
	FILE
		-K, --config [PATH]
			Provide a text file to read curl arguments from

HELP

	-h, --help [all|category|auth|connection|curl|dns|file|ftp|http|imap|misc|output|pop3|post|proxy|scp|sftp|smtp|ssh|telnet|tftp|tls|ech|upload|verbose]
		Display the help information and exit. List all curl command line options within the given category
	-M, --manual
		Outputs the command manual
	-V, --version
		Output version information and exit
```

## Files

```bash
# Configuration file in order of recognition
$CURL_HOME/.curlrc
$XDG_CONFIG_HOME/curlrc
$HOME/.curlrc
```

```powershell
# Windows configuration files
%USERPROFILE%\.curlrc
%APPDATA%\.curlrc
%USERPROFILE%\Application Data\.curlrc
./
```

## Environmental Variables

```bash
[PROTOCOL]_PROXY=[URL] # Provide a proxy server for the specified protocol
ALL_PROXY=[URL] # Provide a proxy server
NO_PROXY=[URL]... # Hostnames that should not go through any proxy
COLUMNS=[NUMBER] # Define the terminal width for the alternative progress-bar
CURL_HOME=[PATH] # Specify the curl home directory
HOME=[PATH] # Specify the home directory
XDG_CONFIG_HOME=[PATH] # Specify the configurations home directory
NETRC=[PATH] # Specify the path to look for .netrc file
QLOGDIR=[PATH] # Specify the path for HTTP3 qlogs
SSLKEYLOGFILE=[PATH] # Provide a file to store TLS secrets
SSL_CERT_DIR=[PATH] #Specify the SSL/TLS certificate file
SSL_CERT_FILE=[PATH] # Specify the SSL/TLS certificates dir
CURL_CA_BUNDLE=[PATH] # Provide the SSL/TLS certificate similar to --cacert
CURL_SSL_BACKEND=[gnutls|mbedtls|openssl|rustls|schannel|wolfssl] # Specify the SSL backend for curl
```

```powershell
APPDATA = [PATH] # Sets the curl home directory
USERPROFILE = [PATH] # Sets the user home directory
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/curl/curl)
[curl.se](https://curl.se/)
[curl.se/docs](https://curl.se/docs)
[linux.die.net](https://linux.die.net/man/1/curl)
