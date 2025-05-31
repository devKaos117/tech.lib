---
package: nvm-sh
category: command
tags:
  - files
  - development
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nvm-sh

> [!info] Version manager for node.js

POSIX compatible shell tool to manage [[node]] versions

## Command
```txt
nvm [OPTION]... [COMMAND] [ARGUMENT]...

OPTIONS

	-h, --help
		Display the help information and exit 
	-v, --version
		Output version information and exit

COMMANDS

	install [VERSION] [--{reinstall-packages-from=VERSION,lts,alias=STRING,default}]...
		Download and install the given version
	uninstall [VERSION]
		Uninstall the given version
	
	current
		Display currently activated version
	ls [VERSION]
		List installed versions, matching a given version if provided
	alias [STRING] [VERSION]
		Set an alias named STRING pointing to the given version
	unalias [STRING]
		Deletes the given alias
	use [VERSION]
		Modify PATH to use the given version. Uses .nvmrc if available and version is omitted
	exec [VERSION] [COMMAND]
		Runs the given command in the given version. Uses .nvmrc if available and version is omitted
	
	reinstall-packages [VERSION]
		Reinstall global npm packages contained in the given version to the current one
	which [VERSION]
		Display path to installed node version. Uses .nvmrc if available and version is omitted
	cache [dir|clear]
		Displays the path to the cache, or empty it
```

## Links
[github.com](https://github.com/nvm-sh/nvm)
