---
category: cli
subjects:
  - binary
language: ruby
package: metasploit-framework
tags:
  - cybersec/tools/offsec/analysis
  - cybersec/tools/offsec/spoofing
  - cybersec/tools/offsec/exploitation
  - cybersec/tools/offsec/post_exploit
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] metasploit-framework

> [!info] Console for the Metasploit Framework

The Metasploit Framework is an open-source tool developed for pentesting. It's better used when in conjunction with [[msfdb]].

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
msfconsole [OPTION]...

OPTIONS

	-c [PATH]
		Load the specified configuration file
	-E, --environment [ARGUMENT]
		The Rails environment. Will use RAIL_ENV environment variable if that is set
	
	-M, --migration-path [PATH]
		Specify a directory containing additional DB migrations
	-y, --yaml [PATH]
		Specify a YAML file containing database settings
	-n, --no-database
		Disable database support
	
	-p, --plugin [ARGUMENT] 
		Load a plugin on startup
	-m, --module-path [PATH]
		Declares an additional module path
	-o, --output [PATH]
		Output to the specified file
	-d, --defanged
		Execute the console as defanged
	-L, --real-readline
		Use the system Readline library instead of RbReadline
	-a, --ask
		Ask before exiting Metasploit
	
	-h, --help
		Display the help information and exit 
	-v, --version
		Output version information and exit

COMMANDS

	?, help
		Display help menu
	exit, quit
		Exit the console
	back
		Move back from the current context

	save
		Saves the active datastores
	load
		Load a framework plugin
	unload
		Unload a framework plugin

	set
		Sets a context-specific variable to a value
	get
		Gets the value of a context-specific variable
	unset
		Unsets one or more context-specific variables
	setg
		Sets a global variable to a value
	getg
		Gets the value of a global variable
	unsetg
		Unsets one or more global variables
	options
		Displays global options or for one or more modules
	advanced
		Displays advanced options for one or more modules

	db_connect
		Connect to an existing data service
	db_disconnect
		Disconnect from the current data service
	db_import
		Import a scan result file (filetype will be auto-detected)
	db_export
		Export a file containing the contents of the database
	db_save
		Save the current data service connection as the default to reconnect on startup
	db_remove
		Remove the saved data service entry
	db_stats
		Show statistics for the database
	db_status
		Show the current data service status

	db_nmap
		Executes nmap and records the output automatically
	hosts
		List all hosts in the database
	services
		List all services in the database
	creds
		List all credentials in the database
	vulns
		List all vulnerabilities in the database
	notes
		List all notes in the database
	loot
		List all loot in the database
	klist
		List Kerberos tickets in the database
	certs
		List Pkcs12 certificate bundles in the database
	workspace
		Switch between database workspaces

	info
		Displays information about one or more modules
	show
		Displays modules of a given type, or all modules
	search
		Searches module names and descriptions
	use
		Interact with a module by name or search term/index
	previous
		Sets the previously loaded module as the current module
	loadpath
		Searches for and loads modules from a path

	listm
		List the module stack
	pushm
		Pushes the active or list of modules onto the module stack
	popm
		Pops the latest module off the stack and makes it active
	clearm
		Clear the module stack
	favorite
		Add module(s) to the list of favorite modules
	favorites
		Print the list of favorite modules (alias for `show favorites`)

	sessions
		Dump session listings and display information about sessions
	threads
		View and manipulate background threads
	connect
		Communicate with a host
	route
		Route traffic through a session

	jobs
		Displays and manages jobs
	handler
		Start a payload handler as job
	kill
		Kill a job
	rename_job
		Rename a job

	history
		Show command history
	repeat
		Repeat a list of commands
	spool
		Write console output into a file as well the screen
	makerc
		Save commands entered since start to a file
	resource
		Run the commands stored in a file

	version
		Show the framework and console library version numbers
	features
		Display the list of not yet released features that can be opted in to
	debug
		Display information useful for debugging
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/rapid7/metasploit-framework)
[metasploit.com](https://www.metasploit.com/)
[docs.metasploit.com](https://docs.metasploit.com/)