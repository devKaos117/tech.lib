---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: wget
category: command
tags:
  - linux/cmds/network/recieving
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] wget

> [!info] Non-interactive network file downloader

Free utility for non-interactive download of files from the Web. Supporting [[Compendium/Protocols/HTTP|HTTP]], [[Compendium/Protocols/HTTP#HTTPS|HTTPS]], and [[Compendium/Protocols/FTP|FTP]] protocols, as well as retrieval through [[Compendium/Protocols/HTTP|HTTP]] proxies, it has been designed for robustness over slow or unstable network connections

## Command
```txt
wget [OPTIONS]... [LINK]

AUTHENTICATION OPTIONS

	--user=[STRING] & --password=[STRING]
		Specify the username user and password password for both FTP and HTTP file retrieval
	--proxy-user=[STRING] & --proxy-password=[STRING]
		Specify the username user and password password for authentication on a proxy server
	--no-netrc
		Do not try to obtain credentials from .netrc file. By default .netrc file is searched for credentials in case none have been passed on command line and authentication is required

INPUT OPTIONS

	-i, --input-file=[PATH]
		Read URLs from a local or external file
	-F, --force-html
		When input is read from a file, force it to be treated as an HTML file
	
	--input-metalink=[PATH]
		Downloads files covered in local Metalink file. Metalink version 3 and 4 are supported
	--metalink-over-http
		Issues HTTP HEAD request instead of GET and extracts Metalink metadata from response headers, then it switches to Metalink download
	--keep-badhash
		Keeps downloaded Metalink's files with a bad hash. It appends .badhash to the name of Metalink's files which have a checksum mismatch, except without overwriting existing files
	
	-r, --recursive
		Turn on recursive retrieving
	-l, --level=[NUMBER]
		Set the maximum number of subdirectories that Wget will recurse into. By default set to 5. Set -l 0 or -l inf for infinite recursion depth
	-np, --no-parent
		Do not ever ascend to the parent directory when retrieving recursively
	
	-A, --accept [PATTERN] & -R, --reject [PATTERN]
		Specify comma-separated lists of file name suffixes or patterns to accept or reject
	--accept-regex [PATTERN] & --reject-regex [PATTERN]
		Specify a regular expression to accept or reject the complete URL
	-D, --domains=[STRING]
		Set domains to be followed in a comma-separated list
	--exclude-domains [STRING]
		Specify the domains that are not to be followed
	--ignore-case
		Ignore case when matching files and directories

OUTPUT OPTIONS

	-h, --help
		Display the help information and exit 
	-V, --version
		Output version information and exit

	--limit-rate=[0-9]{1,}[k|m]
		Limit the download speed. This option allows the use of decimal numbers
	
	-o, --output-file=[PATH]
		Log all messages, normally reported to standard error, to the specified file
	-a, --append-output=[PATH]
		Log all messages, normally reported to standard error, appending to the specified file
	--xattr
		Enable use of file system's extended attributes to save the original URL and the Referer HTTP header value if used
	--protocol-directories
		Use the protocol name as a directory component of local file names
	-S, --server-response
		Print the headers sent by HTTP servers and responses sent by FTP servers
	
	-k, --convert-links
		After the download is complete, convert the links in the document to make them suitable for local viewing. This affects not only the visible hyperlinks, but any part of the document that links to external content, such as embedded images, links to style sheets, hyperlinks to non-HTML content, etc
	--convert-file-only
		This option converts only the filename part of the URLs, leaving the rest of the URLs untouched
	-p, --page-requisites
		Download all the files that are necessary to properly display a given HTML page. This includes such things as inlined images, sounds, and referenced stylesheets
	--delete-after
		Delete every single file it downloads, after having done so
	
	--show-progress
		Force wget to display the progress bar in any verbosity
	-d, --debug
		Turn on debug output, meaning various information important to the developers of Wget if it does not work properly
	-q, --quiet
		Turn off Wget's output
	-nv, --no-verbose
		Turn off verbose, but keep printing basic information and error messages

GENERAL CONFIGURATIONS OPTIONS

	--config=[PATH]
		Specify the location of a startup file you wish to use instead of the default ones
	-t, --tries=[NUMBER]
		Set the maximum number of tries. Specify 0 or inf for infinite retrying
	-T, --timeout=[NUMBER]
		Set the network timeout in seconds
	-w, --wait=[NUMBER]
		Wait NUMBER seconds between the retrievals
	--random-wait
		Set the time between requests to vary between 0.5 and 1.5 multiplied by the specified number of seconds in the --wait option
	
	-b, --background
		Go to background immediately after startup. If no output file is specified via the -o, output is redirected to wget-log
	-c, --continue
		Continue getting a partially-downloaded file
	--no-dns-cache
		Turn off caching of DNS lookups
	--spider
		Behave as a Web spider, just checking that the pages are there
	-N, --timestamping
		Turn on time-stamping

HTTP OPTIONS

	--header=[STRING]
		Send [STRING] along with the rest of the headers in each HTTP request
	--save-headers
		Save the headers sent by the HTTP server to the file, preceding the actual contents, with an empty line as the separator
	
	--no-cache
		Disable server-side cache
	--no-cookies
		Disable the use of cookies
	--load-cookies [PATH]...
		Load cookies from file before the first HTTP retrieval. file is a textual file in the format originally used by Netscape's cookies.txt file
	
	--max-redirect=number
		Specifies the maximum number of redirections to follow for a resource
	-U, --user-agent=[STRING]
		Identify as [STRING] to the HTTP server
	
	--secure-protocol=[auto|SSLv2|SSLv3|TLSv1|TLSv1_1|TLSv1_2|TLSv1_3|PFS]
		Choose the secure protocol to be used
	--no-check-certificate
		Don't check the server certificate against the available certificate authorities. Also don't require the URL host name to match the common name presented by the certificate

FTP OPTIONS
	
	--follow-ftp
		Follow FTP links from HTML documents
	--no-remove-listing
		Don't remove the temporary .listing files generated by FTP retrievals
	--preserve-permissions
		Preserve remote file permissions instead of permissions set by umask
	--retr-symlinks=no
		When retrieving FTP directories recursively and a symbolic link is encountered, do not traverse it to retrieve the pointed-to file, create a matching symbolic link on the local file system instead
```

## Exit Status
- 0 - Success
- 1 - Generic error code
- 2 - Parse error
- 3 - File I/O error
- 4 - Network failure
- 5 - SSL verification failure
- 6 - Username/password authentication failure
- 7 - Protocol errors
- 8 - Server issued an error response

## Relevant Reading
- [[]]

## External Reference
[linux.die.net](https://linux.die.net/man/1/wget)
[gnu.org](https://www.gnu.org/software/wget/)
