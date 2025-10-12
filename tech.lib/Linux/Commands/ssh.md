---
package: openssh-client
category: command
tags:
  - linux/cmds/network/connection
  - linux/cmds/network/sending
  - linux/cmds/network/recieving
  - linux/cmds/network/tunneling
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] openssh-client

> [!info] OpenSSH client

A secure protocol designed to login and execute commands remotely through secure encrypted communications, even within an insecure network

## Command
```txt
ssh [OPTION]... [USER@HOST] [COMMAND] [ARGUMENT]...

OPTIONS

	-4
		Forces ssh to use IPv4 addresses only
	-6
		Forces ssh to use IPv6 addresses only
	-l [USER]
		Specifies the user to log in as on the remote machine
	-p [PORT]
		Port to connect to on the remote host
	
	-A
		Enables forwarding of connections from an authentication agent such as ssh-agent
	-a
		Disables forwarding of the authentication agent connection
	-F [PATH]
		Specifies an alternative per-user configuration file
	-i [PATH]
		Selects	 a	file  from	which the identity (private key) for public key authentication is read
	-c [STRING]
		Selects	 the  cipher  specification for encrypting the session. The list of available ciphers can be obtained with 'ssh -Q ciphers'
	-m [STRING]...
		A comma-separated list of MAC algorithms, specified	 in	 order	of	preference. The list of available MACs can be obtained with 'ssh -Q mac'
	-o [OPTION]
		Can	 be used to give options in the format used in the configuration file
	
	-B [ADDRESS]
		Bind  to  the  address	of bind_interface before attempting to connect to the destination host
	-b [ADDRESS]
		Use bind_address on the local machine as the source address of the connection
	-D [ADDRESS:PORT]
		Specifies a local “dynamic” application-level port forwarding, allocating a socket	to	listen to  port on the local side, optionally bound to the specified address, forwarding any connection made to this port over to the SSH
	-J [[USER@HOST]:[PORT]]...
		Connect to the target host by first making an ssh connection to the jump host described	 by	 destination  and then	establishing a TCP forwarding to the ultimate destination from there.
	
	-q
		Quiet mode
	-v
		Verbose	 mode. Can be used multiple times
	-y
		Send log information using the syslog system module
	-E [PATH]
		Append debug logs to the given file instead of standard error
	-V
		Output version information and exit

ESCAPE CHARACTERS

	~?
		Display a list of escape characters
	
	~.
		Disconnect
	~R
		Request rekeying of the connection
	~#
		List forwarded connections
	~B
		Send a BREAK to the remote system
	~C
		Open  command  line
	
	~^Z
		Background ssh
	~&
		Background ssh at logout when waiting for forwarded connection / X11 sessions to terminate
	
	~v
		Increase the verbosity when errors are being written to stderr
	~V
		Decrease the verbosity when errors are being written to stderr
```

## Exit Status
Exits with the exit status of the remote command or with 255 if an error occurred

## Relevant Reading
- [[]]

## External Reference
[openssh.com](https://www.openssh.com/)
[openssh.com/manual](https://www.openssh.com/manual.html)
[linux.die.net](https://linux.die.net/man/1/ssh)
