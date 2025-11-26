---
category: tool
subjects:
  - cli
  - binary
language: c
package: john
os:
  - linux
tags:
  - cybersec/offensive/exploitation/credential
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] john

> [!info] Advanced offline password cracker

John the Ripper is a fast password cracker, currently available for Unix, macOS, Windows, DOS, BeOS, and OpenVMS systems. Its primary purpose is to detect weak Unix passwords, but it also supports Kerberos/AFS and Windows LM hashes, as well as DES-based tripcodes, plus hundreds of additional hashes and ciphers.

## Favorite Uses
```sh
john --wordlist=WORDLIST HASHES
```

## Command
```txt
john [OPTION]... [PATH]...

SPECIFIC

	MODE
		Specify a configuration file definition. If omitted, the default is "ASCII" for most hash types and "LM_ASCII" for LM hashes. If no definition is found for MODE but it ends with ".chr", it will be taken as a charset file name
	SECTION
		Specify a section from the configuration file
	RULE
		Specify a rule for word mutation

OPTIMIZATION

	--fork=[NUMBER]
		Use multiprocessing parallelism for optimization
	--node=[MIN[-MAX]/TOTAL]
		Manually configure parallel and distributed processing throughout nodes (machine, CPU, process...)
	
	--test[=NUMBER]
		Benchmark all the enabled ciphertext format crackers, and tests them for correct operation at the same time for NUMBER seconds
	--stress-test[=TIME]
		Perform self-tests continuously
	--no-mask
		Use the legacy benchmark with test vectors instead of mask mode
	--skip-self-tests
		Skip self tests (excluding basic integrity checks)

	--keep-guessing
		Keep trying already cracked hashes in search for collisions
	--max-run-time=[[-]NUMBER]
		Pause session after N seconds. If a negative value is provided, it will run for N seconds after the last crack
	--max-candidates=[[-]NUMBER]
		Pause session after N attempts. If a negative value is provided, it will run for N attempts after the last crack

	--dupe-suppression[=NUMBER]
		Opportunistic duplicate candidate password suppression for wordlist+rules. Creates a buffer in memory and use it to detect and suppress some duplicates resulting from application of wordlist rules. Allows for custom cache allocation size in MiB (overrides [Options:Suppressor])
	--no-loader-dupe-check
		Disable the dupe checking when loading hashes
	--salts=[[-]MIN[:MAX]|#[NUMBER[-NUMBER]]]
		Control the salts loading, aiding in exploiting re-used salts. Allows for the load of salts with at least N passwords, or the N most populated salts

	--mkpc=[NUMBER]
		Forcefully specify the crypt batch size
	--costs=[[-][MIN:MAX]]...
		Crack only hashes with similar tunable costs to avoid a slowdown caused by expensive cost parameter settings
	--mem-file-size=[BYTES]
		Set the maximum size for the wordlist preloading. Setting it to 0 forces a full memory loading
	--save-memory=[1|2|3]
		Limit the usage of memory for restrained hardware environments
			1	Don't waste memory on login names (not supported on single crack mode)
			2	Reduce use of performance optimizations involving large lookup tables
			3	Intensifies level 2

SESSION

	--restore[=PATH]
		Continue an interrupted cracking session, reading point information from the specified session state file
	--session[=STRING]
		Specify another point information name for john to use in this cracking session (also affect the log file)
	--status[=STRING]
		Print the status of an interrupted or running session pointed by it's name
	--catch-up=[STRING]
		Run until reaching the candidates tried count of another existing and paused session, allowing for the concatenation of new hashes into an existing session 

SINGLE MODE

	--single[=[SECTION]...|RULE]
		Enables the single crack mode (defaults to [List.Rules:Single])
	--single-seed=[STRING]...
		Add static words for all salts in single mode
	--single-wordlist=[PATH]
		Add all the strings from a wordlist as static words for all salts in single mode 
	--single-user-seed=[PATH]
		Add static words to the correlated usernames, as presented in the wordlist with the format USR:STRING
	--[no-]single-retest-guess
		Toggle the SingleRetestGuess configuration, enabling the re-testing of guessed passwords with all other salts in single mode

INCREMENTAL MODE

	--incremental[=MODE]
		Enable the incremental mode (using [Incremental:MODE])
	--make-charset=[PATH]
		Generate a charset file, based on character frequencies in the pot file for incremental mode

EXTERNAL MODE

	--external[=MODE]
		Enable an external mode (using [List.External:MODE])

MARKOV MODE

	--markov[=[SECTION:][MIN-][LEVEL[:START[:END]]]]
		Enable the markov mode ([Markov:SUBSECTIONS])

HASHES

	--format=[HASH]
		Allows you to override the ciphertext format detection
	--show=[formats|types|invalid]
		Show more information about the hashes
			formats		Parse hashes and show meta-information in JSON
			types		Same as formats, but in an old custom format
			invalid		Show lines in the input file that fail the validation
	--regen-lost-salts=[HASH:BYTES:MASK]
		Find passwords and salts in a set of raw hashes

WORDLIST

	--wordlist[=PATH]
		Use a wordlist
	--loopback[=PATH]
		Use the pot file as a wordlist
	--stdin
		Read the wordlist from stdin
	--pipe
		Read the wordlist from pipe
	--length=[NUMBER]
		Specify the length in bytes for words
	--min-length=[NUMBER]
		Specify the minimum length in bytes for words
	--max-length=[NUMBER]
		Specify the maximum length in bytes for words

MUTATION

	--rules[=[SECTION|:RULE]...]
		Enable wordlist rules for word mutation (defaults to [List.Rules:Wordlist])
	--rules-stack=[SECTION|:RULE]...
		Stack rules and run all of them against each word sequentially instead of running each rule sequentially against all the words
	--rules-skip-nop
		Skip any no-op rules


OUTPUT

	--verbosity=[NUMBER]
		Specify the verbosity level
	--stdout[=NUMBER]
		Output the generated words to stdout instead of attempting it against the hashes. The number specify the significant password length (not available for single crack mode)
	--show[=left]
		Show the cracked passwords in a convenient form. Asking for left passwords list all uncracked hashes
	--log-stderr
		Enable logging to stderr
	--crack-status
		Print a status line at every cracked password
	--progress-every=[NUMBER]
		Print a status line every N seconds
	--reject-printable
		Reject printable binaries
	--bare-always-valid=[y|n]
		Always treat bare hashes as valid

ENCODING

	--field-separator-char=[CHAR]
		Specify the field separator

	--encoding=[ENCODING]
		Specify a character encoding
	--input-encoding=[ENCODING]
		Specify a character encoding for input
	--target-encoding=[ENCODING]
		Specify a character encoding for the target
	--internal-codepage=[ENCODING]
		Specify a character encoding for internal use

FILES

	--pot=[STRING]
		Specify a pot filename to use
	--no-log
		Disable logging to file

OTHERS

	--force-tty
		Set the terminal up for interaction keystrokes even when in the background
	--users=[[-]USER]
		Provide a filter for the accounts used in the operations
	--groups=[[-]GROUP]...
		Provide a filter for information loading based on groups
	--shells=[[-][PATH]]
		Provide a filter for the shell used to load accounts

HELP

	--list=[STRING]
		List supported capabilities. Help will list all the valid arguments.
```

## Rules
```txt
REJECT FLAGS

	-:			don't reject
	-c			this rule unless current hash type is case-sensitive
	-8			this rule unless current hash type uses 8-bit characters
	-s			this rule unless some password hashes were split at loading
	-p			this rule unless word pair commands are currently allowed
	-R			this rule unless stacked rules will be applied later
	-S			this rule if stacked rules will be applied later
	-u			this rule if an internal codepage is configured (doc/ENCODINGS)
	-U			this rule unless an internal codepage is configured
	->N			this rule unless length N or longer is supported
	-<N			this rule unless length N or shorter is supported (--min-length)

NUMERIC CONSTANTS AND VARIABLES

	0...9		for 0...9
	A...Z		for 10...35
	#			for min_length
	@			for (min_length - 1)
	$			for (min_length + 1)
	*			for max_length
	-			for (max_length - 1)
	+			for (max_length + 1)
	a...k		user-defined numeric variables (with the "v" command)
	l			initial or updated word's length (updated whenever "v" is used)
	m			initial or memorized word's last character position
	p			position of the character last found with the "/" or "%" commands
	z			"infinite" position or length (beyond end of word)

CHARACTER CLASSES

	??			matches "?"
	?v			matches vowels: "aeiouAEIOU"
	?c			matches consonants: "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
	?w			matches whitespace: space and horizontal tabulation characters
	?p			matches punctuation: ".,:;'?!`" and the double quote character
	?s			matches symbols "$%^&*()-_+=|\<>[]{}#@/~"
	?l			matches lowercase letters [a-z]
	?u			matches uppercase letters [A-Z]
	?d			matches digits [0-9]
	?a			matches letters [a-zA-Z]
	?x			matches letters and digits [a-zA-Z0-9]
	?o			matches control characters
	?y			matches valid characters
	?z			matches all characters
	?b			matches characters with 8th bit set (mnemonic "b for binary")
	?N			where N is 0...9 are user-defined character classes. They Match characters as defined in john.conf, section [UserClasses]

SIMPLE COMMANDS

	:			no-op: do nothing to the input word
	l			convert to lowercase
	u			convert to uppercase
	c			capitalize
	C			lowercase the first character, and uppercase the rest
	t			toggle case of all characters in the word
	TN			toggle case of the character in position N
	WN			toggle shift of the character in position N
	r			reverse: "Fred" -> "derF"
	d			duplicate: "Fred" -> "FredFred"
	f			reflect: "Fred" -> "FredderF"
	{			rotate the word left: "jsmith" -> "smithj"
	}			rotate the word right: "smithj" -> "jsmith"
	$X			append character X to the word
	^X			prefix the word with character X

STRING COMMANDS

	AN"STR"		insert string STR into the word at position N

ARBITRARY CHARACTERS COMMANDS

	Ax"str"		where str is any 8-bit character similar to an C arbitrary character

LENGTH CONTROL COMMANDS

	<N			reject the word unless it is less than N characters long
	>N			reject the word unless it is greater than N characters long
	_N			reject the word unless it is N characters long
	'N			truncate the word at length N
	aN			reject the word unless it will pass min/max lengths after adding N characters. Used for early rejection
	bN			reject the word unless it will pass min/max lengths after removing N characters

ENGLISH GRAMMAR COMMANDS

	p			pluralize: "crack" -> "cracks", etc. (lowercase only)
	P			"crack" -> "cracked", etc. (lowercase only)
	I			"crack" -> "cracking", etc. (lowercase only)


INSERT/DELETE COMMANDS

	[			delete the first character
	]			delete the last character
	DN			delete the character in position N
	xNM			extract substring from position N for up to M characters
	iNX			insert character X in position N and shift the rest right
	oNX			overstrike character in position N with character X

CHARSET CONVERSION COMMANDS

	S			shift case: "Crack96" -> "cRACK(^"
	V			lowercase vowels, uppercase consonants: "Crack96" -> "CRaCK96"
	R			shift each character right, by keyboard: "Crack96" -> "Vtsvl07"
	L			shift each character left, by keyboard: "Crack96" -> "Xeaxj85"

MEMORY ACCESS COMMANDS

	M			memorize the word (for use with "Q", "X", or to update "m")
	Q			query the memory and reject the word unless it has changed
	XNMI		extract substring NM from memory and insert into current word at I

NUMERIC COMMANDS

	vVNM		update "l" (length), then subtract M from N and assign to variable V

CHARACTER CLASS AND SIMILAR COMMANDS

	sXY			replace all characters X in the word with Y
	s?CY		replace all characters of class C in the word with Y
	@X			purge all characters X from the word
	@?C			purge all characters of class C from the word
	!X			reject the word if it contains character X
	!?C			reject the word if it contains a character in class C
	/X			reject the word unless it contains character X
	/?C			reject the word unless it contains a character in class C
	=NX			reject the word unless character in position N is equal to X
	=N?C		reject the word unless character in position N is in class C
	(X			reject the word unless its first character is X
	(?C			reject the word unless its first character is in class C
	)X			reject the word unless its last character is X
	)?C			reject the word unless its last character is in class C
	%NX			reject the word unless it contains at least N instances of X
	%N?C		reject the word unless it contains at least N characters of class C
	U			reject the word unless it is valid UTF-8 (use with -u rule reject)
	eC			title case, where C is the separation character
	e?C			title case, with chars from class C as separation characters

SINGLE CRACK MODE COMMANDS

	1			first word only
	2			second word only
	+			the concatenation of both (can only be used after a "1" or "2")
```


## Modes
### Wordlist
Read a wordlist and apply the rules, generating multiple candidates from each word
### Single Crack
Use the login and home directory names, GECOS and full name fields with a set of rules, efficiently cracking each passwd entry
### Incremental
Try all the possible character combinations
### External
Custom modes written in C and located in `[List.External:MODE]`
### Markov
Complex probabilistic incremental algorithm
### Mask
Custom masks of characters for candidates building
### Subsets
Divides the keyspace into many subsets of increasing length and start the attempts based on entropy
### Regex
Similar to mask mode, but with RegEx instead of masks (making it slower)

## Files
```bash
/etc/john/john.conf # john general configuration
~/.john/john.ini # local configuration
~/.john/john.pot # pot file
~/.john/john.rec # session state file
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/openwall/john)
[openwall.com](https://www.openwall.com/john/)
[openwall.com/doc/](https://www.openwall.com/john/doc/)