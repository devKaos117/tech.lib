---
package: coreutils
category: command
tags:
  - file
  - file/write
  - file/manage
  - operation
  - operation/transfering
  - system
  - system/disk
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] coreutils

> [!info] Convert and copy data

Copies input to output with a changeable I/O block size, while optionally performing conversions on the data. Sending a USR1 signal to a running ``dd`` process makes it print I/O statistics to standard error and then resume copying

## Favorite Uses
```sh
dd if=/ of=/dev/ status=progress conv=fsync
```

## Command
```txt
dd [OPTIONS]... [OPERAND]...

OPTIONS

	--help
		Display the help information and exit 
	--version
		Output version information and exit
	
OPERANDS
	[BYTES] (default: 512) = [0-9]{1,}[[c|w|b]|[K|M|G|T|P|E|Z|Y|R|Q][B|iB]]

	status=[none|noxfer|progress]
		Define the level of information to print to the standard error
	
	if=[PATH]
		Read from the given file instead of the standard input
	iflag=[append|directory|dsync|sync|fullblock|nonblock|noatime|nocache|noctty|nofollow]
		Read as per the comma separated symbol list
	of=[PATH]
		Write to the given file instead of the standard output
	oflag=[append|directory|dsync|sync|fullblock|nonblock|noatime|nocache|noctty|nofollow]
		Write as per the comma separated symbol list
	
	bs=[BYTES]
		Read and write up to BYTES bytes at a time
	ibs=[BYTES]
		Read up to BYTES bytes at a time
	skip=[NUMBER]
		Skip NUMBER ibs-sized input blocks
	obs=[BYTES]
		Write BYTES bytes at a time
	seek=[NUMBER]
		Skip NUMBER obs-sized output blocks
	
	count=[NUMBER]
		Copy only NUMBER input blocks
	cbs=[BYTES]
		Convert BYTES bytes at a time
	conv=[ascii|ebcdic|ibm|block|unblock|lcase|ucase|sparse|swab|sync|excl|nocreat|notrunc|noerror|fdatasync|fsync]
		Convert the file as per the comma separated symbol list
```

## Links
[linux.die.net](https://linux.die.net/man/1/dd)
[gnu.org](https://www.gnu.org/software/coreutils/manual/html_node/dd-invocation.html#dd-invocation)
