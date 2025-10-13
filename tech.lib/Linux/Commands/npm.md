---
category: cli
subjects:
  - command
package: NULL
tags:
  - NULL
package: nodejs-npm
category: command
tags:
  - linux/cmds/cli/development
  - linux/cmds/system/package
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nodejs-npm

> [!info] Node.js package manager

Package manager for the [[node]] JavaScript platform. It puts modules in place so that node can find them, and manages dependency conflicts intelligently

## Favorite Uses
```sh
npm init --init-author-name 'Gustavo S. Aragão' --init-author-url 'https://github.com/devKaos117'
```

## Command
```txt
command [OPTION]... [COMMAND] [ARGUMENT]...

OPTIONS

	-l
		Display usage info for all commands
	-h, --help
		Display the help information and exit
	-v, --version
		Output version information and exit
	
COMMANDS

	init
		Create a package.json file
	ci
		Clean install a project
		
	search [PCGK]
		Search for packages
	install [PCKG]
		Install a package
	uninstall [PCKG]
		Uninstall a package
	update
		Update installed packages
	edit [PCKG]
		Edit an installed package
	ls
		List installed packages
	
	help, help-search [PATTERN]
		Get help on npm
	docs [PCKG]
		Open documentation for a package
	repo
		Open package repository page in the browser
	explain [PCKG [--json]]
		Explain installed packages
		
	cache [add|clean|ls|verify] [ARGUMENT]
		Manage packages cache
	doctor
		Check the health of your npm environment
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/npm)
[npmjs.com](https://www.npmjs.com/)
[docs.npmjs.com](https://docs.npmjs.com/)
