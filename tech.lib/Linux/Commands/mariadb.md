---
package: mariadb
category: command
tags:
  - files
  - development
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] mariadb

> [!info] MariaDB command-line tool

Simple SQL shell, supporting interactive or non-interactive use

## Command
```txt
mariadb [OPTION]... [DB_NAME]

OPTIONS

	-u, --user=[USER]
		User for login if not current user
	-p, --password=[PASSWORD]
		Password to use when connecting to server. If you use the short option form (-p), you cannot have a space between the option and the password. If you omit the password value following the --password or -p option on the command line, mariadb prompts for one. Specifying a password on the command line should be considered insecure. You can use an option file to avoid giving the password on the command line
	-D, --database=[DB_NAME]
		Database to use
	
	--protocol=[tcp|socket|pipe|memory]
		The protocol to use for connection
	-h, --host=[HOST]
		Connect to the given host
	-P, --port=[NUMBER]
		Port number to use for connection or 0 for default (3306)
	-S, --socket=[PATH]
		For connections to localhost, the Unix socket file to use
	--secure-auth
		Refuse client connecting to server if it uses old protocol
	--skip-reconnect
		Don't reconnect if the connection is lost
	--ssl
		Enables TLS
	
	--pager=[COMMAND]
		Pager to use to display results (Unix only). If you don't supply an option, the default pager is taken from your ENV variable PAGER. Valid pagers are less, more, cat [> filename], etc. See interactive help (\h) also. This option does not work in batch mode. Disable with --disable-pager. This option is disabled by default
	-B, --batch
		Print results using tab as the column separator, with each row on a new line
	--binary-mode
		Allow for ASCII '\0' and stop translating '\r\n' to '\n'
	-t, --table
		Display output in table format. This is the default for interactive use
	-r, --raw
		Disables this character escaping
	--default-character-set=[STRING]
		Set the default character set
	--skip-progress-reports
		Disables getting progress reports for long running commands
	-N, --skip-column-names
		Don't write column names in results
	-L, --skip-line-numbers
		Don't write line number for errors
	--tee=[PATH]
		Append everything into the given file
	-H, --html
		Produce HTML output
	-X, --xml
		Produce XML output
	-s, --silent
		Be more silent. This option can be given multiple times
	-v, --verbose
		Be more verbose. This option can be given multiple times
	
	-f, --force
		Continue even if we get an SQL error. Sets --abort-source-on-error to 0
	-b, --no-beep
		Turn off beep on error
	-e, --execute=[STRING]
		Execute statement and quit. Disables --force and history file
	--select-limit=[NUMBER]
		Automatic limit for SELECT when using --safe-updates (default 1000)
	-c, --comments
		Preserve comments, sending it to the server
	-q, --quick
		Don't cache result and print it row by row. This may slow down the server if the output is suspended. Doesn't use history file
	-T, --debug-info
		Print some debug info at exit
	--debug-check
		Check memory and open file usage at exit
	--show-warnings
		Show warnings after every statement
	-U, --safe-updates
		Allow only UPDATE and DELETE statements that specify which rows to modify by using key values
	--sandbox
		Disallow commands that access the file system (except \P without an argument and \e)
	
	-?, --help
		Display the help information and exit 
	-V, --version
		Output version information and exit
				
COMMANDS
	
	connect, \r [DB_NAME] [HOST]
		Reconnect to the given server. If no arguments are given, the current values are used
	use, \u [DB_NAME]
		Use DB_NAME as the default database
	exit, quit, \q
		Exit mysql
	
	go, \g
		Send the current statement to the server to be executed
	ego, \G
		Send the current statement to the server to be executed and display the result using vertical format
	edit, \e
		Edit the current input statement
	print, \p
		Print the current input statement without executing it
	clear, \c
		Clear the current input
	
	source, \. [PATH]
		Read the named file and executes the statements contained therein
	charset, \C [STRING]
		Change the default character set and issue a SET NAMES statement
	nopager, \n
		Disable output paging
	notee , \t
		Disable output copying to the tee file
	
	status, \s
		Provide status information about the connection and the server you are using
	system, \! [COMMAND]
		Execute the given command using your default command interpreter
	help, ?, \? [ARGUMENT]
		Display a help message listing the available mysql commands. If you provide an argument, mysql uses it as a search string to access server-side help
```

## Links
[github.com](https://github.com/MariaDB/)
[mariadb.org](https://mariadb.org/)
[mariadb.com](https://mariadb.com/kb/)
