---
package: metasploit-framework
category: command
tags:
  - linux/cmds/security/offsec
  - linux/cmds/cli/utilities
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] metasploit-framework

> [!info] Manage the metasploit framework database

Metasploit script that allows you to easily setup and control both a database and a web service for [[msfconsole]].

## Command
```txt
msfdb [OPTION]... [ACTION]...

status
	Displays service status

init
	Creates and begins execution of a database and web service
delete
	Deletes the web service and database configuration files
reinit
	Same as delete and init in sequence

start
	Start the database and web service
stop
	Stop the database and web service
restart
	Same as stop and start in sequence
```

## Relevant Reading
- [[]]

## External Reference
[docs.metasploit.com/metasploit-database](https://docs.metasploit.com/docs/using-metasploit/intermediate/metasploit-database-support.html)
