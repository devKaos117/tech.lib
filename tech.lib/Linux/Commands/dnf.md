---
category: cli
subjects:
  - binary
language: c
tags:
  - NULL
package: dnf
category: command
tags:
  - linux/cmds/system/package
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] dnf

> [!info] RPM CLI

A package manager for [[rpm]] based Linux distribuitions

## Command
```txt
dnf [OPTION]... [OPERATION [ARGUMENT]...]

-y, --assumeyes
	Automatically answer yes for all questions
--assumeno
	Automatically answer no for all questions

-c, --config=[PATH]
	Configuration file location
-R, --randomwait=[NUMBER]
	Maximum command wait time in minutes
--comment=[STRING]
	Add a comment to the transaction history
--refresh
	Set metadata as expired before running the command
-b, --best
	Try the best available package versions in transactions. Specifically during dnf upgrade, which by default skips over updates that can not be installed for dependency reasons, the switch forces DNF to only consider the latest packages
--bugfix
	Include packages that fix a bugfix issue. Applicable for the install, repoquery, updateinfo, upgrade and offline-upgrade commands
-C, --cacheonly
	Run entirely from system cache, don't update the cache and use it even in case it is expired
--allowerasing
	Allow erasing of installed packages to resolve dependencies
--noautoremove
	Disable removal of dependencies that are no longer used
--nodocs
	Do not install documentation
--nogpgcheck
	Skip checking GPG signatures on packages
--noplugins
	Disable all plugins

--forcearch=[STRING]
	Force the use of an architecture. The use of an architecture not supported natively by your CPU will require emulation of some kind. This is usually through QEMU
--downloaddir=[PATH], --destdir=[PATH]
	Redirect downloaded packages to provided directory. The option has to be used together with the --downloadonly command line option, with the download, modulesync, reposync or system-upgrade commands
--downloadonly
	Download the resolved package set without performing any rpm transaction
--security
	Includes packages that provide a fix for a security issue. Applicable for the install, repoquery, updateinfo, upgrade and offline-upgrade commands
--skip-broken
	Resolve depsolve problems by removing packages that are causing problems from the transaction.
--releasever=[STRING]
	Configure DNF as if the distribution release was STRING. This can affect cache paths, values in configuration files and mirrorlist URLs
--repo=[REPOSITORY_ID], --repoid=[REPOSITORY_ID]
	Enable just specific repositories by an id or a glob. Can be used multiple times with accumulative effect

--enable, --set-enabled
	Enable specified repositories. The option has to be used together with the config-manager command
--enableplugin=[STRING]
	Enable the listed plugins specified by names or globs
--enablerepo=[REPOSITORY_ID]
	Temporarily enable additional repositories for the purpose of the current dnf command. Accepts an id, a comma-separated list of ids, or a glob of ids
--disable, --set-disabled
	Disable specified repositories. The option has to be used together with the config-manager command
--disableexcludes=[all|main|REPOSITORY_ID], --disableexcludepkgs=[all|main|<repoid>]
	Disable the configuration file excludes
--disableplugin=[STRING]
	Disable the listed plugins specified by names or globs
--disablerepo=[REPOSITORY_ID]
	Temporarily disable active repositories for the purpose of the current dnf command. Accepts an id, a comma-separated list of ids, or a glob of ids

--showduplicates
	Show duplicate packages in repositories. Applicable for the list and search commands
-q, --quiet
	In combination with a non-interactive command, shows just the relevant content. Suppresses messages notifying about the current state or actions of DNF
-v, --verbose
	Verbose operation, show debug messages

-h, --help, --help-cmd
	Display the help information and exit 
--version
	Output version information and exit

OPERATIONS
	
	install [SPECIFICATION]
		Makes sure that the given packages and their dependencies are installed on the system
	remove [SPECIFICATION]... [--[duplicates|oldinstallonly]]
		Removes	 the  specified	 packages  from the system along with any packages depending on the packages being removed, optionally removing older versions of duplicate packages or old installonly packages
	autoremove
		Removes	 all  packages	from the system that were originally installed as dependencies of user-installed packages, but which are no longer required by any such package
	reinstall [SPECIFICATION]...
		Installs the specified packages, fails if some of the packages are either not installed or not available
	upgrade [SPECIFICATION]...
		Updates all packages, or specific ones, to the latest version that is both available and resolvable
	check-update [--changelogs]
		Non-interactively checks if updates of the specified packages are available. Optionally prints the changelog delta of packages about to be updated
	system-upgrade [download|clean|reboot|upgrade|log]
		Prepare system for upgrade to a new release
	
	list [--[all|installed|upgrade|autoremove|recent]] [SPECIFICATION]
		List a package or a group of packages
	mark [install|group|remove] [SPECIFICATION]...
		Marks or unmarks the specified packages as installed by user or by group (useful if any package was installed as a dependency and is desired to stay on the system)
	group [mark] [summary|info|install|list|remove|upgrade] [GROUP]
		Groups are virtual collections of packages. DNF keeps track of groups that the user marked installed and can manipulate the comprising packages with simple commands
	
	check [--[dependencies|duplicates|obsoleted|provides]]...
		Checks the local packagedb and produces information on any problems it finds. You can limit the checks to be  performed	 using the options
	clean [dbcache|expire-cache|metadata|packages|all]
		Performs cleanup of temporary files kept for repositories. This includes any such data left behind from	 disabled  or removed repositories as well as for different distribution release versions
	alias [list|add|delete] [NAME=VALUE]
		Allows the user to define and manage a list of aliases, which can be then used as dnf commands to abbreviate longer command sequences
	
	history [list] [--reverse] [SPECIFICATION]
		The history command allows the user to view what has happened in past transactions and act according to this information
	provides [SPECIFICATION]
		Finds  the	packages providing the given SPECIFICATION. This is useful when one knows a filename and wants to find what package provides this file
	search [--all] [STRING]
		Search package metadata for keywords. Keywords are matched as case-insensitive substrings,	globbing  is  supported
	info [SPECIFICATION]
		Lists description and summary information about installed and available packages
	help [COMMAND]
		Displays  the  help text for all commands or for a particular command
```

## Exit Status
- 0 - Success
- 1 - An error occurred, which was handled by dnf
- 3 - An unknown unhandled error occurred during operation
- 100 - See check-update
- 200 - There was a problem with acquiring or releasing of locks

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/rpm-software-management/dnf)
[dnf.readthedocs.io](https://dnf.readthedocs.io/en/latest/index.html#)
[man7.org](https://man7.org/linux/man-pages/man8/dnf.8.html)
