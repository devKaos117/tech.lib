---
category: protocol
subjects:
  - networks
full_form: Network File System
acronym: NFS
---
## Definition
similar to SMB, it's a file sharing protocol
based on [ONC-RPC]{Open Network Computing Remote Procedure Call}, uses [XDR]{External Data Representation} for system-independent data exchange
There is no native support for [[IAM#Authentication|AuthN]], relying on RPC for this, usually using UNIX UID/GID
NFS versions:

|**Version**|**Features**|
|---|---|
|`NFSv2`|It is older but is supported by many systems and was initially operated entirely over UDP.|
|`NFSv3`|It has more features, including variable file size and better error reporting, but is not fully compatible with NFSv2 clients.|
|`NFSv4`|It includes Kerberos, works through firewalls and on the Internet, no longer requires portmappers, supports ACLs, applies state-based operations, and provides performance improvements and high security. It is also the first version to have a stateful protocol.|

use port 2049, but v4.1 included multipathing
server configuration is made with exports table

|**Option**|**Description**|
|---|---|
|`rw`|Read and write permissions.|
|`ro`|Read only permissions.|
|`sync`|Synchronous data transfer. (A bit slower)|
|`async`|Asynchronous data transfer. (A bit faster)|
|`secure`|Ports above 1024 will not be used.|
|`insecure`|Ports above 1024 will be used.|
|`no_subtree_check`|This option disables the checking of subdirectory trees.|
|`root_squash`|Assigns all permissions to files of root UID/GID 0 to the UID/GID of anonymous, which prevents `root` from accessing files on an NFS mount|



## Relevant Reading
- []()

## External Reference
[en.wikipedia.org]()
[RFC8881 - NFSv4.1](https://datatracker.ietf.org/doc/html/rfc8881)
