---
category: cli
subjects:
  - binary
language: c
package: hashcat
tags:
  - cybersec/tools/offsec/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] hashcat

> [!info] Advanced password recovery utility

The world's fastest and most advanced password recovery utility, supporting  CPUs and GPUs  hardware accelerators and has facilities to enable distributed password cracking

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
hashcat [OPTION]... [PATH] [ARGUMENT]...

HARDWARE

	-b, --benchmark
		Run benchmark
	--benchmark-all
		Run benchmark of all hash-modes
	--example-hashes
		Show an example hash for each hash-mode
	--speed-only
		Return expected speed of the attack, then quit
	--progress-only
		Return ideal progress step size and time to process
	--keyspace
		Show keyspace base:mod values and quit

	--cpu-affinity=[STRING]...
		Locks to CPU devices
	--spin-damp=[NUMBER]
		Use CPU for device synchronization, in percent
	--hwmon-disable
		Disable temperature and fanspeed reads and triggers
	--hwmon-temp-abort=[NUMBER]
		Set a temperature threshold in degrees Celsius for aborting
	-w, --workload-profile=[NUMBER]
		Enable a specific workload profile

	-O, --optimized-kernel-enable
		Enable optimized kernels
	-n, --kernel-accel=[NUMBER]
		Manual workload tuning, set outerloop step size
	-u, --kernel-loops=[NUMBER]
		Manual workload tuning, set innerloop step size
	-T, --kernel-threads=[NUMBER]
		Manual workload tuning, set thread count

	-I, --opencl-info
		Show info about detected OpenCL platforms/devices
	--opencl-platforms=[STRING]...
		OpenCL platforms to use
	-d, --opencl-devices=[STRING]...
		OpenCL devices to use
	-D, --opencl-device-types=[STRING]...
		OpenCL device-types to use
	--opencl-vector-width=[NUMBER]
		Manually override OpenCL vector-width

GENERAL

	--force
		Ignore warnings
	--self-test-disable
		Disable self-test functionality on startup
	--nonce-error-corrections=[NUMBER]
		The BF size range to replace AP's nonce last bytes

	--session=[STRING]
		Define specific session name
	--restore
		Restore session from --session
	--restore-disable
		Do not write restore file
	--restore-file-path=[PATH]
		Specific path to restore file
	--runtime=[NUMBER]
		Timeout in seconds for session aborting
	--stdin-timeout-abort=[NUMBER]
		Stdin input timeout in seconds for session aborting

	--bitmap-min=[NUMBER]
		Sets minimum bits allowed for bitmaps
	--bitmap-max=[NUMBER]
		Sets maximum bits allowed for bitmaps

	--truecrypt-keyfiles=[PATH]
		Keyfiles to use, separated with commas
	--veracrypt-keyfiles=[PATH]
		Keyfiles to use, separated with commas

ATTACK

	-a, --attack-mode=[NUMBER]
		Specify the attack-mode
			0	-	Straight
			1	-	Combination
			3	-	Brute-force
			6	-	Hybrid Wordlist + Mask
			7	-	Hybrid Mask + Wordlist
	-m, --hash-type=[NUMBER]
		Specify the hash-type
	--keep-guessing
		Keep guessing the hash after it has been cracked
	--veracrypt-pim=[NUMBER]
		VeraCrypt personal iterations multiplier
	--scrypt-tmto=[NUMBER]
		Manually override TMTO value for scrypt
	-S, --slow-candidates
		Enable slower (but advanced) candidate generators

	--increment
		Enable increment mode
	--increment-min=[NUMBER]
		Define where to start incrementing
	--increment-max=[NUMBER]
		Define where to stop incrementing

	--markov-classic
		Enables classic markov-chains, no per-position
	--markov-disable
		Disables markov-chains, emulates classic brute-force
	--markov-hcstat2=[PATH]
		Specify hcstat2 file to use
	-t, --markov-threshold=[NUMBER]
		Defines a threshold to stop accepting new markov-chains

RULES

	-j, --rule-left [STRING]
		Single rule applied to each word from left wordlist
	-k, --rule-right [STRING]
		Single rule applied to each word from right wordlist
	-r, --rules-file=[PATH]
		Rules-file
	-g, --generate-rules=[NUMBER]
		Generate the given amount of random rules
	--generate-rules-func-min=[NUMBER]
		Define the minimum number of functions per random
	--generate-rules-func-max=[NUMBER]
		Define the maximum number of functions per random
	--generate-rules-seed=[NUMBER]
		Define the seed for the rules generator

SERVER

	--brain-server
		Enable brain server
	-z, --brain-client
		Enable brain client (implies -S)
	--brain-client-features=[NUMBER]
		Define brain client features
	--brain-host=[HOST]
		Brain server host (IP or domain)
	--brain-port=[PORT]
		Brain server port
	--brain-password=[PASS]
		Brain server authentication password
	--brain-session=[HEX]
		Overrides automatically calculated brain session
	--brain-session-whitelist=[HEX]
		Allow given sessions only, separated with commas

INPUT

	--encoding-from=[ENCODING]
		Force internal wordlist input encoding
	--encoding-to=[ENCODING]
		Force internal wordlist output encoding
	--hex-wordlist
		Assume words in wordlist are given in hex
	--wordlist-autohex-disable
		Disable the conversion of $HEX[] from the wordlist
	-c, --segment-size=[NUMBER]
		Size in MB to cache from the wordfile

	--remove
		Enable remove of hash once it is cracked
	--remove-timer=[NUMBER]
		Set a delay in secods for the hash file updating
	--loopback
		Add new plains to induct directory
	--induction-dir=[PATH]
		Specify the induction directory to use for loopback
	--hex-salt
		Assume salt is given in hex
	--username
		Enable ignoring of usernames in hashfile

	-s, --skip=[NUMBER]
		Skip the given amount of words from the start
	-l, --limit=[NUMBER]
		Limit the number of words from the start + skipped words

	-[1-4], --custom-charset[1-4]=[CHARSET|PATH]
		Set an indexed user-defined charset
	--hex-charset
		Assume charset is given in hex
	--keyboard-layout-mapping=[PATH]
		Keyboard layout mapping table for special hash-modes
	--hccapx-message-pair=[NUMBER]
		Load only message pairs from hccapx matching this

OUTPUT

	-o, --outfile=[PATH]
		Define outfile for recovered hash
	--outfile-format=[1-15]
		Define outfile-format for recovered hash
			1	-	hash[:salt]
			2	-	plain
			3	-	hash[:salt]:plain
			4	-	hex_plain
			5	-	hash[:salt]:hex_plain
			6	-	plain:hex_plain
			7	-	hash[:salt]:plain:hex_plain
			8	-	crackpos
			9	-	hash[:salt]:crack_pos
			10	-	plain:crack_pos
			11	-	hash[:salt]:plain:crack_pos
			12	-	hex_plain:crack_pos
			13	-	hash[:salt]:hex_plain:crack_pos
			14	-	plain:hex_plain:crack_pos
			15	-	hash[:salt]:plain:hex_plain:crack_pos
	-p, --separator=[CHAR]
		Define separator char for hashlists/outfile
	--outfile-check-timer=[NUMBER]
		Sets a delay in secods between outfile checks
	--outfile-autohex-disable
		Disable the use of $HEX[] in output plains
	--outfile-check-dir=[PATH]
		Specify the outfile directory to monitor for plains

	--status
		Enable automatic update of the status-screen
	--status-timer=[NUMBER]
		Seconds between status-screen update

	--stdout
		Stdout mode
	--potfile-path=[PATH]
		Specific path to potfile
	--potfile-disable
		Do not write potfile
	--quiet
		Suppress output
	--machine-readable
		Display the status view in a machine-readable format
	--show
		Show cracked passwords only
	--left
		Show uncracked passwords only

	--debug-file=[PATH]
		Output file for debugging rules
	--debug-mode=[NUMBER]
		Defines the debug mode
			1	-	save finding rule
			2	-	save original word
			3	-	save original word and finding rule
			4	-	save original word, finding rule and modified plain
	--logfile-disable
		Disable the logfile

-h, --help
	Display the help information and exit
-V, --version
	Output version information and exit
```

## Built-In Charsets
```txt
?l	-	abcdefghijklmnopqrstuvwxyz
?u	-	ABCDEFGHIJKLMNOPQRSTUVWXYZ
?d	-	0123456789
?h	-	0123456789abcdef
?H	-	0123456789ABCDEF
?s	-	 !"#$%&'()*+,-./:;<=>?@[]^_`{|}~
?a	-	?l?u?d?s
?b	-	0x00 - 0xff
```

## Rule Functions
```txt
:		Nothing					Do nothing (passthrough)
l		Lowercase				Lowercase all letters
u		Uppercase				Uppercase all letters
c		Capitalize				Capitalize the first character, lowercase the rest
C		Invert Capitalize		Lowercase the first character, uppercase the rest
t		Toggle Case				Toggle the case of all characters in word
TN		Toggle @				Toggle the case of characters at position N
r		Reverse					Reverse the entire word
d		Duplicate				Duplicate entire word
pN		Duplicate N				Append duplicated word N times
f		Reflect					Duplicate word reversed
{		Rotate Left				Rotate the word left
}		Rotate Right			Rotate the word right
$X		Append Character		Append character X to end
^X		Prepend Character		Prepend character X to front
[		Truncate left			Delete first character
]		Truncate right			Delete last character
DN		Delete @ N				Delete character at position N
xNM		Extract range			Extract M characters, starting at position N
ONM		Omit range				Delete M characters, starting at position N
iNX		Insert @ N				Insert character X at position N
oNX		Overwrite @ N			Overwrite character at position N with X
'N		Truncate @ N			Truncate word at position N
sXY		Replace					Replace all instances of X with Y
@X		Purge					Purge all instances of X
zN		Duplicate first N		Duplicate first character N times
ZN		Duplicate last N		Duplicate last character N times
q		Duplicate all			Duplicate every character

HASHCAT-LEGACY (non-OpenCL CPU)

XNMI	Extract memory			Insert substring of length M starting from position N of word saved to memory at position I
4		Append memory			Append the word saved to memory to current word
6		Prepend memory			Prepend the word saved to memory to current word
M		Memorize				Memorize current word

REJECT RULES

<N		Reject less				Reject plains if their length is greater than N
>N		Reject greater			Reject plains if their length is less than N
_N		Reject equal			Reject plains of length not equal to N
!X		Reject contain			Reject plains which contain char X
/X		Reject not contain		Reject plains which do not contain char X
(X		Reject equal first		Reject plains which do not start with X
)X		Reject equal last		Reject plains which do not end with X
=NX		Reject equal at			Reject plains which do not have char X at position N
%NX		Reject contains			Reject plains which contain char X less than N times
Q		Reject contains			Reject plains where the memory saved matches current word

SPECIFIC FUNTIONS

k		Swap front				Swap first two characters
K		Swap back				Swap last two characters
*NM		Swap @ N				Swap character at position N with character at position M
LN		Bitwise shift left		Bitwise shift left character @ N
RN		Bitwise shift right		Bitwise shift right character @ N
+N		ASCII increment			Increment character @ N by 1 ascii value
-N		ASCII decrement			Decrement character @ N by 1 ascii value
.N		Replace N + 1			Replace character @ N with value at @ N plus 1
,N		Replace N - 1			Replace character @ N with value at @ N minus 1
yN		Duplicate block front	Duplicate first N characters
YN		Duplicate block back	Duplicate last N characters
E		Title					Lower case the whole line, then upper case the first letter and every letter after a space
eX		Title w/separator		Lower case the whole line, then upper case the first letter and every letter after a custom separator character
3NX		Toggle w/Nth separator	Toggle case the letter after the Nth instance of a separator char
```

## Hash Types
```txt
0		-	MD5
10		-	md5($pass.$salt)
20		-	md5($salt.$pass)
30		-	md5(unicode($pass).$salt)
40		-	md5($salt.unicode($pass))
50		-	HMAC-MD5 (key =$pass)
60		-	HMAC-MD5 (key =$salt)
100		-	SHA1
110		-	sha1($pass.$salt)
120		-	sha1($salt.$pass)
130		-	sha1(unicode($pass).$salt)
140		-	sha1($salt.unicode($pass))
150		-	HMAC-SHA1 (key =$pass)
160		-	HMAC-SHA1 (key =$salt)
200		-	MySQL323
300		-	MySQL4.1/MySQL5
400		-	phpass, MD5(Wordpress), MD5(phpBB3), MD5(Joomla)
500		-	md5crypt, MD5(Unix), FreeBSD MD5, Cisco-IOS MD5
900		-	MD4
1000	-	NTLM
1100	-	Domain Cached Credentials (DCC), MS Cache
1400	-	SHA256
1410	-	sha256($pass.$salt)
1420	-	sha256($salt.$pass)
1430	-	sha256(unicode($pass).$salt)
1431	-	base64(sha256(unicode($pass)))
1440	-	sha256($salt.unicode($pass))
1450	-	HMAC-SHA256 (key =$pass)
1460	-	HMAC-SHA256 (key =$salt)
1600	-	md5apr1, MD5(APR), Apache MD5
1700	-	SHA512
1710	-	sha512($pass.$salt)
1720	-	sha512($salt.$pass)
1730	-	sha512(unicode($pass).$salt)
1740	-	sha512($salt.unicode($pass))
1750	-	HMAC-SHA512 (key =$pass)
1760	-	HMAC-SHA512 (key =$salt)
1800	-	SHA-512(Unix)
2400	-	Cisco-PIX MD5
2410	-	Cisco-ASA MD5
2500	-	WPA/WPA2
2600	-	Double MD5
3200	-	bcrypt, Blowfish(OpenBSD)
3300	-	MD5(Sun)
3500	-	md5(md5(md5($pass)))
3610	-	md5(md5($salt).$pass)
3710	-	md5($salt.md5($pass))
3720	-	md5($pass.md5($salt))
3800	-	md5($salt.$pass.$salt)
3910	-	md5(md5($pass).md5($salt))
4010	-	md5($salt.md5($salt.$pass))
4110	-	md5($salt.md5($pass.$salt))
4210	-	md5($username.0.$pass)
4300	-	md5(strtoupper(md5($pass)))
4400	-	md5(sha1($pass))
4500	-	Double SHA1
4600	-	sha1(sha1(sha1($pass)))
4700	-	sha1(md5($pass))
4800	-	MD5(Chap), iSCSI CHAP authentication
4900	-	sha1($salt.$pass.$salt)
5000	-	SHA-3(Keccak)
5100	-	Half MD5
5200	-	Password Safe SHA-256
5300	-	IKE-PSK MD5
5400	-	IKE-PSK SHA1
5500	-	NetNTLMv1-VANILLA / NetNTLMv1-ESS
5600	-	NetNTLMv2
5700	-	Cisco-IOS SHA256
5800	-	Android PIN
6300	-	AIX {smd5}
6400	-	AIX {ssha256}
6500	-	AIX {ssha512}
6700	-	AIX {ssha1}
6900	-	GOST, GOST R 34.11-94
7000	-	Fortigate (FortiOS)
7100	-	OS X v10.8+
7200	-	GRUB 2
7300	-	IPMI2 RAKP HMAC-SHA1
7400	-	sha256crypt, SHA256(Unix)
7900	-	Drupal7
8400	-	WBB3, Woltlab Burning Board 3
8900	-	scrypt
9200	-	Cisco $8$
9300	-	Cisco $9$
9800	-	Radmin2
10000	-	Django (PBKDF2-SHA256)
10200	-	Cram MD5
10300	-	SAP CODVN H (PWDSALTEDHASH) iSSHA-1
11000	-	PrestaShop
11100	-	PostgreSQL Challenge-Response Authentication (MD5)
11200	-	MySQL Challenge-Response Authentication (SHA1)
11400	-	SIP digest authentication (MD5)
99999	-	Plaintext

SPECIFIC HASH TYPES

11		-	Joomla < 2.5.18
12		-	PostgreSQL
21		-	osCommerce, xt:Commerce
23		-	Skype
101		-	nsldap, SHA-1(Base64), Netscape LDAP SHA
111		-	nsldaps, SSHA-1(Base64), Netscape LDAP SSHA
112		-	Oracle S: Type (Oracle 11+)
121		-	SMF > v1.1
122		-	OS X v10.4, v10.5, v10.6
123		-	EPi
124		-	Django (SHA-1)
131		-	MSSQL(2000)
132		-	MSSQL(2005)
133		-	PeopleSoft
141		-	EPiServer 6.x < v4
1421	-	hMailServer
1441	-	EPiServer 6.x > v4
1711	-	SSHA-512(Base64), LDAP {SSHA512}
1722	-	OS X v10.7
1731	-	MSSQL(2012 & 2014)
2611	-	vBulletin < v3.8.5
2612	-	PHPS
2711	-	vBulletin > v3.8.5
2811	-	IPB2+, MyBB1.2+
3711	-	Mediawiki B type
3721	-	WebEdition CMS
7600	-	Redmine Project Management Web App
```

## Files


## Environmental Variables
```bash
VAR=VAL # desc
```


## Exit Status
- n - status

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/hashcat/hashcat)
[hashcat.net](https://hashcat.net/)
[hashcat.net/wiki/](https://hashcat.net/wiki/)
