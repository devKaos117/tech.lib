---
category: resource
subjects:
  - foundations
full_form: Database Management System
acronym: DBMS
---
## Definition

## Classification

## MySQL
open-source SQL relational DBMS developed and supported by Oracle
works according to client-server principle
ANSI/ISO standard defines the existence of information schemas as databases

## MSSQL
Microsoft's relational DBMS
Closed source and suport native integration with .NET
SSMS (SQL Server Management Studio) is a client-side GUI
Default system databases:

|Default System Database|Description|
|---|---|
|`master`|Tracks all system information for an SQL server instance|
|`model`|Template database that acts as a structure for every new database created. Any setting changed in the model database will be reflected in any new database created after changes to the model database|
|`msdb`|The SQL Server Agent uses this database to schedule jobs & alerts|
|`tempdb`|Stores temporary objects|
|`resource`|Read-only database containing system objects included with SQL server|

By default runs as NT SERVICE\MSSQLSERVER and encryption is not enforced when attempting to connect
May be configured to windows autentication, delegating this task to the OS (therefore, using either the SAM or the domain controller)
TCP port 1433
Uses T-SQL
[[TDS]]

## Oracle
[[TNS]]

## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFCNNNN - NAME](https://datatracker.ietf.org/doc/html/rfcNNNN)
