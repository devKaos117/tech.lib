---
package: tar
category: command
tags:
  - file
  - file/manage
  - file/archiving
  - file/compression
  - file/backup
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] tar

> [!info] Archiving utility

Archiving program designed to store multiple files in a single file (an archive), and to manipulate such archives

## Favorite Uses
```sh
tar vczf archive.tar.gz source
tar vxzf archive.tar.gz --directory=destination
tar vxzf archive.tar.gz --exclude=pattern --directory=destination
```

## Command
```txt
tar [OPERATION]... [ARCHIVE] [OPTION]... [PATH]...

OPERATIONS

	-A, --catenate, --concatenate
		Append archives to the end of another archive
	-c, --create
		Create a new archive
	-d, --diff, --compare
		Find differences between archive and file system. The arguments are optional and specify archive members to compare
	--delete
		Delete from the archive. The arguments supply names of the archive members to be removed
	-r, --append
		Append files to the end of an archive
	-t, --list
		List the contents of an archive
	--test-label
		Test the archive volume label and exit
	-u, --update
		Append files which are newer than the corresponding copy in the archive
	-x, --extract, --get
		Extract files from an archive. Arguments optionally specify the names of the archive members to be extracted 

	-f, --file=[PATH]
		Use archive file or device PATH

OPTIONS

	-a, --auto-compress
		Use archive suffix to determine the compression program 
	-j, --bzip2
		Filter the archive through bzip2
	-J, --xz
		Filter the archive through xz
	-z, --gzip, --gunzip, --ungzip
		Filter the archive through gzip
	-Z, --compress, --uncompress
		Filter the archive through compress
	
	--exclude=[PATTERN]
		Exclude files matching PATTERN, a glob-style wildcard pattern 
	-k, --keep-old-files
		Don't replace existing files when extracting 
	--keep-newer-files
		Don't replace existing files that are newer than their archive copies 
	--no-overwrite-dir
		Preserve metadata of existing directories 
	--overwrite
		Overwrite existing files when extracting 
	--remove-files
		Remove files from disk after adding them to the archive 
	--skip-old-files
		Don't replace existing files when extracting, silently skip over them 
	-p, --preserve-permissions, --same-permissions
		Set permissions of extracted files to those recorded in the archive
	--same-owner
		Try extracting files with the same ownership as exists in the archive
	
	-h, --dereference
		Follow symlinks; archive and dump the files they point to 
	--hard-dereference
		Follow hard links; archive and dump the files they refer to 
	
	-N, --newer=[TIME], --after-date=[TIME]
		Only store files newer than TIME. If TIME starts with / or . it is taken to be a file name; the mtime of that file is used as the date 
	-P, --absolute-names
		Don't strip leading slashes from file names when creating archives 
	
	--selinux
		Enable SELinux context support 
	--no-selinux
		Disable SELinux context support 
	--xattrs
		Enable extended attributes support 
	--no-xattrs
		Disable extended attributes support 
	
	--ignore-command-error
		Ignore subprocess exit codes 
	-O, --to-stdout
		Extract files to standard output 
	-m, --touch
		Don't extract file modified time 
	
	--ignore-case
		Ignore case 
	-v, --verbose
		Verbosely list files processed

	-?, --help
		Display the help information and exit 
	--version
		Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/1/tar)
[gnu.org](https://www.gnu.org/software/tar/)
