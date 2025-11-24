---
category: cli
subjects:
  - script
language: python
package: NULL
tags:
  - NULL
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] package

> [!info] Swiss army knife for pentesting Windows/Active Directory environments

From enumerating logged on users and spidering SMB shares to executing psexec style attacks, auto-injecting Mimikatz/Shellcode/DLL’s into memory using Powershell, dumping the NTDS.dit and more.

## Favorite Uses
```sh
command options arguments
```

## Command
### Common Options
```txt
crackmapexec [ldap|ssh|ftp|winrm|smb|mssql|rdp] [HOST] [OPTION]...

CONNECTION

	--port [PORT]
		Set a custom port for the connection
	--kdcHost [STRING]
		FQDN of the domain controller. If omitted it will use the domain part (FQDN) specified in the target parameter

	-u [USR|PATH]...
		Provide a list of usernames, either manually or by pointing to a file
	-p [PWD|PATH]...
		Provide a list of passwords, either manually or by pointing to a file

	-id [STRING|PATH]
		Provide a list of database credential IDs for authentication, either manually or by pointing to a file
	-k, --kerberos
		Use Kerberos authentication
	--use-kcache
		Use Kerberos authentication from ccache file (KRB5CCNAME)
	--aesKey [STRING]
		Provide the AES key for Kerberos Authentication (128/256 bits)

	--server [http|https]
		Specify the server protocol
	--server-host [HOST]
		Specify an IP to bind the server to
	--server-port [PORT]
		Specify a port to bind the server to
	--connectback-host [HOST]
		Specify an IP for the remote system to connect back to

OPTIMIZATION

	-t [NUMBER]
		Sets the ammount of concurrent threads
	--timeout [NUMBER]
		Sets the max timeout in seconds of each thread
	--jitter [NUMBER]
		Sets a random delay between each connection

MODE

	--continue-on-success
		Continues authentication attempts even after successes
	--no-bruteforce
		Instead of password spraying, assume credentials are orderly related when using files for both username and password

	--gfail-limit [NUMBER]
		Sets a global limit of failed login attempts
	--ufail-limit [NUMBER]
		Sets a limit of failed login attempts for each username
	--fail-limit [NUMBER]
		Sets a limit of failed login attempts for each host

OUTPUT

	--export [PATH]
		Export results into a file

MODULE

	-L, --list-modules
		List available modules
	--options
		Display the current module options
	-M, --module [STRING]
		Select a module to use
	-o [VAR=VAL]
		Set module specific options

HELP

	-h, --help
		Display the help information and exit
	-v, --version
		Output version information and exit
```

### Protocol Specific
```txt
LDAP

	-d [STRING]
		Specify the domain for authentication
	--local-auth
		Authenticate locally to each target
	-H, --hash [HASH|PATH]...
		Provide a list of NTLM hashes, either manually or by pointing to a file

	--asreproast [STRING]
		Get AS_REP response ready to crack with hashcat
	--kerberoasting [STRING]
		Get TGS ticket ready to crack with hashcat

	--gmsa
		Enumerate GMSA passwords
	--get-sid
		Get domain sid
	--no-smb
		No smb connection

	--users
		Enumerate enabled domain users
	--groups
		Enumerate domain groups

	--trusted-for-delegation
		Get the list of users and computers with the flag TRUSTED_FOR_DELEGATION
	--password-not-required
		Get the list of users with the flag PASSWD_NOTREQD
	--admin-count
		Get objets that had the value adminCount set to 1



SSH

	-x [COMMAND]
		Provide a command for remote execution
	--no-output
		Do not retrieve command output

WINRM

	--ssl
		Connect to SSL Enabled WINRM
	--ignore-ssl-cert
		Ignore Certificate Verification

	-d [STRING]
		Specify the domain for authentication
	--local-auth
		Authenticate locally to each target
	-H, --hash [HASH|PATH]...
		Provide a list of NTLM hashes, either manually or by pointing to a file
	--laps [PWD]
		LAPS authentification

	-x [COMMAND]
		Provide a command for remote execution
	-X [COMMAND]
		Provide a command for remote execution in PowerShell
	--no-output
		Do not retrieve command output

	--sam
		Dump SAM hashes from target systems
	--lsa
		Dump LSA secrets from target systems


SMB

	--smb-server-port [PORT]
		Specify the server port for SMB
	-d [STRING]
		Specify the domain for authentication
	--share [STRING]
		Specify a share for the connection
	--local-auth
		Authenticate locally to each target
	-H, --hash [HASH|PATH]...
		Provide a list of NTLM hashes, either manually or by pointing to a file
	--laps [PWD]
		LAPS authentification
	--amsi-bypass [PATH]
		Provide a custom AMSI bypass
	--codec [ENCODING]
		Sets the encoding expected from the target's output
	--smb-timeout [NUMBER]
		Sets the SMB connection timeout

	--user [USER]
		Dump selected user from DC
	--users [USER]
		Enumerate enabled domain users. If a user is specifed, query only his information
	--loggedon-users
		Enumerate logged on users
	--groups [GROUP]
		Enumerate domain groups. If a group is specified, enumerate its memebers instead
	--local-groups [GROUP]
		Enumerate local groups. If a group is specified, enumerate its memebers instead
	--computers [STRING]
		Enumerate specific computer users
	--rid-brute [USER]
		Enumerate users by bruteforcing RID's up to the provided limit
	--loggedon-users-filter [PATTERN]
		Only search for specific user

	--shares
		Enumerate shares and access
	--sessions
		Enumerate active sessions
	--disks
		Enumerate disks
	--enabled
		Only dump enabled targets from DC
	--gen-relay-list [PATH]
		Outputs all hosts that don't require SMB signing to the specified file

	--sam
		Dump SAM hashes from target systems
	--lsa
		Dump LSA secrets from target systems
	--ntds [drsuapi|vss]
		Dump the NTDS.dit from target DCs using the specifed method
	--pass-pol
		Dump password policy

	-x [COMMAND]
		Provide a command for remote execution
	-X [COMMAND]
		Provide a command for remote execution in PowerShell
	--no-output
		Do not retrieve command output
	--force-ps32
		Force the PowerShell command to run in a 32-bit process
	--obfs
		Obfuscate PowerShell scripts
	--clear-obfscripts
		Clear all cached obfuscated PowerShell scripts
	--exec-method [wmiexec|atexec|mmcexec|smbexec]
		Specify the method to execute the command
	--wmi [STRING]
		Issues the specified WMI query
	--wmi-namespace [STRING]
		Sets the WMI Namespace

	--put-file [PATH(L)] [PATH(R)]
		Put a local file into remote target
	--get-file [PATH(R)] [PATH(L)]
		Get a remote file

	--content
		Enable file content searching
	--pattern [PATTERN]...
		Sets a pattern to search for in folders, filenames and file content
	--regex [PATTERN]...
		Sets a regex to search for in folders, filenames and file content

	--spider [STRING]
		Specify the share to spider
	--spider-folder [PATH]
		Specify the folder to spider
	--exclude-dirs [PATH]...
		Specify directories to exclude from spidering
	--depth [NUMBER]
		Sets the maximum spider recursion depth
	--only-files
		only spider files

MSSQL

	-d [STRING]
		Specify the domain for authentication
	--local-auth
		Authenticate locally to each target
	-H, --hash [HASH|PATH]...
		Provide a list of NTLM hashes, either manually or by pointing to a file

	-q, --query QUERY
		Provide a query for remote execution against the MSSQL DB
	-x [COMMAND]
		Provide a command for remote execution
	-X [COMMAND]
		Provide a command for remote execution in PowerShell
	--no-output
		Do not retrieve command output
	--force-ps32
		Force the PowerShell command to run in a 32-bit process
	--obfs
		Obfuscate PowerShell scripts
	--clear-obfscripts
		Clear all cached obfuscated PowerShell scripts

	--put-file [PATH(L)] [PATH(R)]
		Put a local file into remote target
	--get-file [PATH(R)] [PATH(L)]
		Get a remote file

RDP

	-d [STRING]
		Specify the domain for authentication
	--local-auth
		Authenticate locally to each target
	-H, --hash [HASH|PATH]...
		Provide a list of NTLM hashes, either manually or by pointing to a file

	--rdp-timeout [NUMBER]
		Set the RDP timeout on socket connection
	--screentime [NUMBER]
		Time to wait for desktop image

	--res [NUMBERxNUMBER]
		Set the screen resolution

	--nla-screenshot
		Screenshot RDP login prompt if NLA is disabled
	--screenshot
		Screenshot RDP if connection success
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/byt3bl33d3r/CrackMapExec)
[](site)
[](man)
[gnu.org](GNU)
