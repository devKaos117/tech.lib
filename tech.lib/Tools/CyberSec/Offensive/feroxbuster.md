---
category: tool
subjects:
  - cli
  - binary
language: rust
package: feroxbuster
os:
  - linux
tags:
  - cybersec/offensive/reconnaissance/enumerating
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] feroxbuster

> [!info] A fast, simple, recursive content discovery tool

Tool designed to perform forced browsing, the enumeration and access of resources that are not referenced by the application, but are still accessible. It uses brute force combined with a wordlist to search for unlinked content in target directories. 

## Favorite Uses
```sh
feroxbuster -v -t 64 --thorough -o TARGET.map --protocol http -m GET,OPTIONS -H referer:TARGET -b COOKIES -w WORDLIST -x FILE_EXTENSIONS -A -r -u TARGET
feroxbuster -v -t 64 -C 404 -E -g --auto-tune -o TARGET.map --protocol http -m GET -H referer:TARGET -b COOKIES -w WORDLIST -x FILE_EXTENSIONS -A -r -u TARGET
```

## Command
```txt
CONNECTION

	-p, --proxy [URL]
		Proxy to use for requests
	-P, --replay-proxy [URL]
		Send only unfiltered requests through a Replay Proxy, instead of all requests
	--burp
		Set --proxy to http://127.0.0.1:8080 and set --insecure to true
	--burp-replay
		Set --replay-proxy to http://127.0.0.1:8080 and set --insecure to true

TLS

	-k, --insecure
		Disables TLS certificate validation in the client
	--server-certs [PATH]...
		Add custom root certificate(s) for servers with unknown certificates
	--client-cert [PATH]
		Add a PEM encoded certificate for mutual authentication (mTLS)
	--client-key [PATH]
		Add a PEM encoded private key for mutual authentication (mTLS)

OPTIMIZATION

	-t, --threads [NUMBER]
		Number of concurrent threads per-directory
	--parallel [URL]
		Run parallel feroxbuster instances (one child process per url passed via stdin)
	-L, --scan-limit [NUMBER]
		Limit total number of concurrent scans per thread (0 for no unlimited)
	--rate-limit [NUMBER]
		Limit number of requests per second (per directory) (0 for unlimited)
	--time-limit TIME
		Limit total run time of all scans

SESSION

	--resume-from [PATH]
		State file from which to resume a partially complete scan

INPUT

	-u, --url [URL]
		The target URL
	--stdin
		Read url(s) from STDIN
	--dont-scan [URL|PATTERN]...
		URL(s) or Regex Pattern(s) to exclude from recursion/scans
	-w, --wordlist [PATH]
		Path or URL of the wordlist

REQUEST

	--protocol [PROTOCOL]
		Specify the protocol to use when targeting via --request-file or --url with domain only
	-m, --methods [METHOD]...
		Which HTTP request method(s) should be sent
	-H, --headers [VAR:VAL]...
		Specify HTTP headers to be used in each request
	-A, --random-agent
		Use a random User-Agent
	-a, --user-agent [STRING]
		Sets the User-Agent
	-b, --cookies [VAR=VAL]...
		Specify HTTP cookies to be used in each request
	-Q, --query [VAR=VAL]...
		Request's URL query parameters
	--data [STRING|@PATH]
		Request's Body

	-x, --extensions [STRING|@PATH]...
		File extension(s) to search for
	--request-file [PATH]
		Raw HTTP request file to use as a template for all requests
	-f, --add-slash
		Append / to each request's URL
	--dont-extract-links
		Don't extract links from response body

	-T, --timeout [NUMBER]
		Number of seconds before a client's request times out
	-r, --redirects
		Allow client to follow redirects

	-d, --depth [NUMBER]
		Maximum recursion depth (0 for infinite recursion)
	-n, --no-recursion
		Do not scan recursively
	--force-recursion
		Force recursion attempts on all 'found' endpoints (still respects recursion depth)
	--scan-dir-listings
		Force scans to recurse into directory listings

OUTPUT

	-o, --output [PATH]
		Write results to the specified file
	--debug-log [PATH]
		Write log entries to the specified file
	--no-state
		Disable state output file

	-v, --verbosity
		Increase verbosity level. Can be used multiple times
	--json
		Emit JSON logs to --output and --debug-log instead of normal text

	-S, --filter-size [NUMBER]...
		Filter out messages of a particular size
	-X, --filter-regex [PATTERN]...
		Filter out messages via regular expression matching on the response's body/headers
	-W, --filter-words [NUMBER]...
		Filter out messages of a particular word count
	-N, --filter-lines [NUMBER]...
		Filter out messages of a particular line count
	-C, --filter-status [NUMBER]...
		Filter out status codes
	--filter-similar-to [URL]...
		Filter out pages that are similar to the given page

	-D, --dont-filter
		Don't auto-filter wildcard responses

	-s, --status-codes [NUMBER]...
		Status Codes to include
	-R, --replay-codes [NUMBER]...
		Status Codes to send through a Replay Proxy when found

	-q, --quiet
		Hide progress bars and banner
	--silent
		Only print URLs (or JSON) and turn off logging
	--limit-bars [NUMBER]
		Number of directory scan bars to show at any given time

DYNAMIC

	-E, --collect-extensions
		Automatically discover extensions and add them to --extensions
	-I, --dont-collect [STRING]...
		File extension(s) to Ignore while collecting extensions
	-B, --collect-backups [STRING]...
		Automatically request likely backup extensions for found urls
	-g, --collect-words
		Automatically discover important words from within responses and add them to the wordlist

	--auto-tune
		Automatically lower scan rate when an excessive amount of errors are encountered
	--auto-bail
		Automatically stop scanning when an excessive amount of errors are encountered

	--smart
		Set --auto-tune, --collect-words, and --collect-backups to true
	--thorough
		Use the same settings as --smart and set --collect-extensions and --scan-dir-listings to true

OTHERS

	-U, --update
		Update feroxbuster to the latest version

HELP

	-h, --help
		Display the help information and exit
	-v, --version
		Output version information and exit
```

## Files
```bash
# feroxbuster searches for ferox-config.toml sequentially (overwriting) through:

/etc/feroxbuster/ # global configuration
CONFIG_DIR/feroxbuster/ # per-user
.../feroxbuster # (per-user)
./ # (per-target)

# CONFIG_DIR is defined as the following:
$XDG_CONFIG_HOME | $HOME/.config # Linux
$HOME/Library/Application # MacOs
%USER%\AppData\Roaming # Windows
```

## Configuration File
```bash
# headers can be specified on multiple lines or as an inline table
#
# inline example
# headers = {"stuff" = "things"}
#
# multi-line example
#   note: if multi-line is used, all key/value pairs under it belong to the headers table until the next table
#         is found or the end of the file is reached
#
# If you want to use [headers], UNCOMMENT the line below
# [headers]
# stuff = "things"
# more = "headers"

#============ default values built-in the binaries

# timeout: 7 seconds
# follow redirects: false
# wordlist: /usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt
# threads: 50
# verbosity: 0 (no logging enabled)
# scan_limit: 0 (no limit imposed on concurrent scans)
# rate_limit: 0 (no limit imposed on requests per second)
# status_codes: All valid status codes
# user_agent: feroxbuster/VERSION
# recursion depth: 4
# auto-filter wildcards - true
# output: stdout
# save_state: true (create a state file in cwd when Ctrl+C is received)
# backup_extensions: ["~", ".bak", ".bak2", ".old", ".1"]
# protocol: https

#============ ferox-config.toml example
wordlist = "/wordlists/seclists/Discovery/Web-Content/raft-medium-directories.txt"
status_codes = [200, 500]
filter_status = [301]
threads = 1
timeout = 5
proxy = "http://127.0.0.1:8080"
replay_proxy = "http://127.0.0.1:8081"
replay_codes = [200, 302]
verbosity = 1
parallel = 8
scan_limit = 6
rate_limit = 250
quiet = true
silent = true
auto_tune = true
auto_bail = true
json = true
output = "/targets/ellingson_mineral_company/gibson.txt"
debug_log = "/var/log/find-the-derp.log"
user_agent = "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0"
random_agent = false
redirects = true
insecure = true
collect_words = true
collect_backups = true
collect_extensions = true
extensions = ["php", "html"]
dont_collect = ["png", "gif", "jpg", "jpeg"]
methods = ["GET", "POST"]
data = [11, 12, 13, 14, 15]
url_denylist = ["http://dont-scan.me", "https://also-not.me"]
regex_denylist = ["/deny.*"]
no_recursion = true
add_slash = true
stdin = true
dont_filter = true
extract_links = true
depth = 1
limit_bars = 3
force_recursion = true
filter_size = [5174]
filter_regex = ["^ignore me$"]
filter_similar = ["https://somesite.com/soft404"]
filter_word_count = [993]
filter_line_count = [35, 36]
queries = [["name","value"], ["rick", "astley"]]
save_state = false
time_limit = "10m"
server_certs = ["/some/cert.pem", "/some/other/cert.pem"]
client_cert = "/some/client/cert.pem"
client_key = "/some/client/key.pem"
request_file = "/some/raw/request/file"
protocol = "http"
scan_dir_listings = true
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/epi052/feroxbuster)
[epi052.github.io](https://epi052.github.io/feroxbuster-docs/docs/)
