---
package: rsync
category: command
tags:
  - linux/cmds/file/backup
  - linux/cmds/network/connection
  - linux/cmds/operation/transfering
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] rsync

> [!info] Fast and versatile file-copying tool

Famous for its delta-transfer algorithm, rsync is a fast and extraordinarily versatile file copying tool. It can copy locally, to/from another host over any remote shell, or to/from a remote rsync daemon. It offers a large number of options that control every aspect of its behavior and permit very flexible specification of the set of files to be copied

## Command
```txt
rsync [OPTION]... [[USER@][HOST:]SRC]... [[USER@][HOST:]DEST]...

--no-[OPTION]
	Turn off one or more options

--ipv4, -4
	Prefer IPv4 when creating sockets or running ssh
--ipv6, -6
	prefer IPv6 when creating sockets or running ssh

--super
	Tells the receiving side to attempt super-user activities
--fake-super
	Simulates super-user activities by saving/restoring the privileged attributes via special extended attributes that are attached to each file
-p, --perms
	The receiving rsync sets the destination permissions to mimic the source
--chmod=[MODE]
	Apply one or more comma-separated modes to the permission of the files in the transfer
-o, --owner
	Set the owner of the destination file to be the same as the source (recieving sudo required)
-g, --group
	Set the group of the destination file to be the same as the source (recieving sudo required)
--numeric-ids
	Transfer numeric group and user IDs rather than using user and group names and mapping them at both ends
--usermap=[NUMBER[-NUMBER]|USER|*|nobody]...:[NUMBER|USER|nobody]
	Specify users that should be mapped to other values by the receiving side
--groupmap=[NUMBER[-NUMBER]|GROUP|*|nobody]...:[NUMBER|GROUP|nobody]
	Specify groups that should be mapped to other values by the receiving side
--chown=USER:GROUP
	Forces all files to be owned by USER with group GROUP
--copy-as=USER[:GROUP]
	Use the USER and GROUP specified for the copy operations
-t, --times
	Transfer modification times along with the files and update them on the remote system
-U, --atimes
	Update the destination access times to mimic the source
-N, --crtimes
	Update the destination creation times to mimic the source
-A, --acls
	Update the destination ACLs to mimic the source
-E, --executability
	Preserve the executability (or non-executability) of regular files
-X, --xattrs
	Update the destination extended attributes to mimic the source

-a, --archive
	Quick way of saying you want recursion and want to preserve almost everything. Equivalent to -rlptgoD
-r, --recursive
	copy directories recursively
-R, --relative
	Use relative paths. This effectively sends the full path names specified on the command line 
-d, --dirs
	Include any directories that are encountered
--no-implied-dirs
	Affects the default behavior of --relative, not including the attributes of the implied directories from the source names
--mkpath
	Create all missing path components of the destination path
--devices
	Transfer character and block device files to the remote system to recreate these devices
--specials
	Transfer special files
-D
	Equivalent to --devices --specials
--copy-devices
	Treat a device on the sending side as a regular file, allowing it to be copied to a normal destination file
--write-devices
	Treat a device on the receiving side as a regular file, allowing the writing of file data into a device

--filter=RULE, -f
	Add rules to selectively exclude certain files from the list of files to be transferred. Check the manual to find the available rules
--exclude=PATTERN
	Specifies an exclude rule, working as a simplified filter
--exclude-from=PATH
	Specifies a file that contains exclude patterns

--whole-file, -W
	Disables rsync's delta-transfer algorithm
--preallocate
	Allocate each destination file to its eventual size before writing data to the file using the real filesystem-level preallocation support
--max-size=BYTES
	Avoid transferring any file that is larger than the specified size
--min-size=BYTES
	Avoid transferring any file that is smaller than the specified size
--max-alloc=BYTES
	Resizes the default 1GB malloc/realloc limit
--timeout=NUMBER
	Set a maximum I/O timeout in seconds
--outbuf=NONE|LINE|BLOCK
	Sets the output buffering mode
--bwlimit=BYTES
	Specify the maximum transfer rate for the data sent over the socket, specified in units per second

--compress, -z
	Compresses the file data as it is sent to the destination machine
--compress-choice=[ozstd|olz4|ozlibx|ozlib|onone]
	Override the automatic negotiation of the compression algorithm
--compress-level=NUMBER
	Set the compression level to use
--skip-compress=STRING
	Override the list of file suffixes that will be compressed as little as possible

-u, --update
	Skip any files which exist on the destination and have a modified time that is newer than the source
--ignore-times, -I
	Disables the default behavior of skipping any files that are already the same size and have the same modification timestamp
--size-only
	Updates all files that have changed in size
-c, --checksum
	Checks if the files have been changed by comparing the size and a 128-bit checksum
--checksum-choice=[oauto|oxxh128|oxxh3|oxxh64|omd5|omd4|osha1|onone]
	Defines the checksum algorithm to be used. Check the list with --version
--fsync
	Fsync each finished file
--inplace
	Writes the updated data directly to the destination file
--existing, --ignore-non-existing
	Skip creating files that do not exist yet on the destination
--ignore-existing
	Skip updating files that already exist on the destination (except for directories)
--delete
	Delete extraneous files from the receiving side, but only for the directories that are being synchronized. You must have asked rsync to send the whole directory for this to apply
--delete-before
	Request that the file-deletions on the receiving side be done before the transfer start
--del, --delete-during
	Request that the file-deletions on the receiving side be done incrementally as the transfer happens
--delete-after
	Request that the file-deletions on the receiving side be done after the transfer has completed
--delete-delay
	Request that the file-deletions on the receiving side be computed during the transfer, and then removed after the transfer completes
--delete-excluded
	This option turns any unqualified exclude/include rules into server-side rules that do not affect the receiver's deletions
--force
	Delete a non-empty directory when it is to be replaced by a non-directory
--ignore-errors
	Tells --delete to go ahead and delete files even when there are I/O errors
--remove-source-files
	Remove the files (non-directories) that are a part of the transfer and have been successfully duplicated on the receiving side

-l, --links
	Add symlinks to the transferred files instead of noisily ignoring them with a "non-regular file" warning
-H, --hard-links
	Look for hard-linked files in the source and link together the corresponding files on the destination
-L, --copy-links
	Dereference, transforming each symlink encountered into the referent item, following the symlink chain
--safe-links
	Ignores any symbolic links in the transfer which point outside the copied tree
--copy-unsafe-links
	Copy the referent of symbolic links that point outside the copied tree
--munge-links
	Munge symlink values when it is receiving files or unmunge symlink values when it is sending files, making the symlinks unusable on disk but allowing the contents to be recovered
-k, --copy-dirlink
	Dereference dir links, sending side treats symlinks to directories as real directories
-K, --keep-dirlinks
	Dereference dirlinks, but only if it matches a real directory from the sender

-q, --quiet
	Decreases the amount of information you are given during the transfer
-v, --verbose
	Increases the amount of information you are given during the transfer
-h, --human-readable
	Output numbers in a more human-readable format. Can be used up to three times to alter the output: Insert a separator for each 3 digits; Convert numbers to units of 1000; Convert numbers to units of 1024
-i, --itemize-changes
	Requests a simple itemized list of the changes that are being made to each file, including attribute changes

--stats
	Print a verbose set of statistics on the file transfer
--progress
	Print information showing the progress of the transfer
--info=[all|help|none|backup|copy|del|flist|misc|mount|name|nonreg|progress|remove|skip|stats|symsafe][NUMBER]
	Allows for fine-grained control over the information output you want to see. An individual flag name may be followed by a level number starting from 0
--debug=[all|help|none|acl|backup|bind|chdir|connect|cmd|del|deltasum|dup|exit|filter|flist|fuzzy|genr|hash|hlink|iconv|io|nstr|own|proto|recv|send|time]
	Allows for fine-grained control over the debug output you want to see. An individual flag name may be followed by a level number starting from 0

-n, --dry-run
	Perform a trial run that doesn't make any changes
--list-only
	List source files instead of transferring them
--log-file=[PATH]
	Log what it is doing to a file
--log-file-format=[PATTERN]
	Specify exactly what per-update logging is put into the file specified by the --log-file option
--stderr=[errors|all|client]
	Controls which processes output to stderr and if info messages are also changed to stderr
--out-format=[PATTERN]
	Specify exactly what the rsync client outputs to the user on a per-update basis

--stop-after=NUMBER
	Stop copying when the specified number of minutes has elapsed
--stop-at=y-M-dTh:m
	Stop copying when the specified point in time has been reached

-h, --help
	Display the help information and exit 
-V, --version
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
