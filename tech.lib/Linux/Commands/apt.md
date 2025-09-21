---
package: apt
category: command
tags:
  - linux/cmds/system/package
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] apt

> [!info] deb package manager CLI

Provides a high-level command line interface for the package management system of [[Debian]] based distros. It is intended as an end user interface and enables some options better suited for interactive usage by default compared to more specialized APT tools like [[apt-get]] and [[apt-cache]]

## Command
```txt
apt [OPTION]... [OPERATION [ARGUMENT]...]

OPTIONS

	-y
		Assume yes
	-t=[STRING]
		Specify target release
	-a=[STRING]
		Specify target architecture

	-h, --help
		Display the help information and exit 
	-v, --version
		Output version information and exit

OPERATIONS

	install [PATTERN]...
		Install one or more specified packages
	reinstall [PATTERN]...
		Reinstall one or more specified packages
	upgrade
		Install available upgrades of all packages currently installed on the system from the configured sources
	full-upgrade
		Performs the function of upgrade but will remove currently installed packages if this is needed to upgrade the system as a whole
	
	update
		Download package information from all configured sources
	search [PATTERN]...
		Search for the given regex terms in the list of available packages and display matches
	show [PATTERN]...
		Show information about the given packages including its dependencies, installation and download size, sources the package is available from, the description of the packages content and much more
	list [--[installed|upgradeable|all-versions]] [PATTERN]
		Display a list of packages satisfying certain criteria
	edit-sources (work-in-progress)
		Edit your sources.list files in your preferred text editor while also providing basic sanity checks
	
	remove [PATTERN]...
		Remove one or more specified packages
	autoremove
		Remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed as dependencies
	purge [PATTERN]...
		Remove one or more specified packages and its configuration files. If no package is specified, remove all configuration files from previous removed packages
```

## Links
[github.com](https://github.com/Debian/apt)
[wiki.debian.org](https://wiki.debian.org/Apt)
[linux.die.net](https://linux.die.net/man/8/apt)
