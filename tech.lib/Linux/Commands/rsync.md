---
package: rsync
category: command
tags:
  - file
  - file/backup
  - network
  - network/sending
  - network/recieving
  - operation
  - operation/transfering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] rsync

> [!info] Fast and versatile file-copying tool

Famous for its delta-transfer algorithm, rsync is a fast and extraordinarily versatile file copying tool. It can copy locally, to/from another host over any remote shell, or to/from a remote rsync daemon. It offers a large number of options that control every aspect of its behavior and permit very flexible specification of the set of files to be copied

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
command [OPTION]... [ARGUMENT]...

[BYTES] = [0-9]{1,}[[c|w|b]|[K|M|G|T|P|E|Z|Y|R|Q][B|iB]]

-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Exit Status
- 0 -⁠ Success
- 1 -⁠ Syntax or usage error
- 2 -⁠ Protocol incompatibility
- 3 -⁠ Errors selecting input/output files, dirs
- 4 -⁠ Requested action not supported. Either:
    - an attempt was made to manipulate 64-bit files on a platform that cannot support them
    - an option was specified that is supported by the client and not by the server
- 5 -⁠ Error starting client-server protocol
- 6 -⁠ Daemon unable to append to log-file
- 10 -⁠ Error in socket I/O
- 11 -⁠ Error in file I/O
- 12 -⁠ Error in rsync protocol data stream
- 13 -⁠ Errors with program diagnostics
- 14 -⁠ Error in IPC code
- 20 -⁠ Received SIGUSR1 or SIGINT
- 21 -⁠ Some error returned by ``waitpid()``
- 22 -⁠ Error allocating core memory buffers
- 23 -⁠ Partial transfer due to error
- 24 -⁠ Partial transfer due to vanished source files
- 25 -⁠ The ``-⁠-⁠max-⁠delete`` limit stopped deletions
- 30 -⁠ Timeout in data send/receive
- 35 -⁠ Timeout waiting for daemon connection

## Links
[github.com](https://github.com/RsyncProject/rsync)
[rsync.samba.org](https://rsync.samba.org/)
[download.samba.org](https://download.samba.org/pub/rsync/rsync.1)
