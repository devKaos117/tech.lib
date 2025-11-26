---
category: tool
subjects:
  - cli
  - script
language: python
package: wfuzz
os:
  - linux
tags:
  - cybersec/offensive/exploitation/web
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] wfuzz

> [!info] Web application bruteforcer

WFuzz is a web application security fuzzer tool and library for Python, providing a framework to automate web applications security assessments.

## Favorite Uses
```sh
wfuzz -Z -R 1 -t 16 --hc 404,501 --field timer --field r.method --field code --field url -z list,GET-HEAD-OPTIONS -z file,WORDLIST -X FUZ1Z URL/FUZ2Z
wfuzz -Z -t 16 --hc 404,501 --field timer --field r.method --field code --field url -z file,WORDLIST -z list,html-php-pdf-txt URL/FUZ2Z.FUZ2Z
wfuzz -t 16 --hc CODE -X METHOD --field timer --field r.method --field code --field url -z list,WORDLIST --basic USERNAME:FUZZ URL
wfuzz -t 16 --hc 404 -X POST --field timer --field r.method --field code --field url -z file,WORDLIST -d "username=USERNAME&password=FUZZ" URL
```


## Command
```txt
wfuzz [OPTION]... [ARGUMENT]... [URL]

-e [encoders|payloads|iterators|printers|scripts]
	List available plugins of each type

-u [URL]
	Specify a URL for the request
-m [ITERATOR]
	Specify an iterator for combining payloads (product by default)
-z [PAYLOAD]...
	Specify a payload for each FUZZ keyword used in the form of [TYPE,PARAMETERS,ENCODER]. A list of encoders can be used with "-". Encoders can be chained with "@"
--zP [ARGUMENT]...
	Arguments for the specified payload
--slice [EXPRESSION]
	Filter payload's elements using the specified expression

-w [PATH]
	Specify a wordlist file
-V [allvars|allpost]
	All parameters bruteforcing 
--recipe [PATH]
	Reads options from a recipe
--dump-recipe [PATH]
	Prints current options as a recipe

--filter [EXPRESSION]
	Filter	responses  using the specified expression
--prefilter [EXPRESSION]
	Filter items before fuzzing using the specified expression

--hs [PATTERN]
	Hide responses with the specified regex within the content
--ss[PATTERN]
	Show responses with the specified regex within the content
--hc [STRING]...
	Hide HTTP responses with the specified code
--sc [STRING]...
	Show responses with the specified code
--hl [STRING]...
	Hide HTTP responses with the specified lines
--sl [STRING]...
	Show responses with the specified lines
--hw [STRING]...
	Hide HTTP responses with the specified words
--sw [STRING]...
	Show responses with the specified words
--hh [STRING]...
	Hide HTTP responses with the specified chars
--sh [STRING]...
	Show responses with the specified chars

-Z
	Scan mode. Connection errors will be ignored
--dry-run
	Print the results of applying the requests without actually making any HTTP request
--prev
	Print the previous HTTP requests (only when using payloads generating fuzzresults)

-t [NUMBER]
	Specify the number of concurrent connections (10 default)
-R [NUMBER]
	Limits the recursive path discovery
-s [NUMBER]
	Specify time delay between requests (0 default)
--req-delay [NUMBER]
	Sets the request timeout in seconds(90 default)
--conn-delay [NUMBER]
	Sets the connection timeout in seconds (90 default)

-p [IP:PORT:[SOCKS4|SOCKS5|HTTP]...
	Use the given proxies
-X [METHOD]
	Specify an HTTP method for the request
-d [STRING]...
	Use post data
-H [STRING]...
	Use headers
-b [STRING]...
	Specify a cookie for the requests
-L, --follow
	Follow HTTP redirections
--basic [USR:PWD|FUZZ:FUZZ]
	Set basic authentication headers
--ntlm [USR:PWD|FUZZ:FUZZ]
	Set NTLM authentication headers
--digest [USR:PWD|FUZZ:FUZZ]
	Set digest authentication headers

--script=[PLUGIN]...
	Runs script's scan
--script-help=[PLUGIN]
	Show help about scripts
--script-args [VAR=VAL]...
	Provide arguments to scripts
--interact
	All key presses are captured, allowing for interaction with the program

-v
	Verbose information
-c
	Output with colors
--oF [PATH]
	Saves fuzz results to a file
-o printer
	Format output using the specified printer.
-f [PATH][,PRINTER]
	Store results in the output file using the specified printer (raw printer if omitted)

-h, --help
	Display the help information and exit
```

## Files


## Environmental Variables
```bash
VAR=VAL # desc
```


## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/xmendez/wfuzz)
[wfuzz.readthedocs.io](https://wfuzz.readthedocs.io/en/latest/)
