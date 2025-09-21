---
package: tldr
category: command
tags:
  - linux/cmds/cli/help
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] tldr

> [!info] Too long;Didn't read

The ``tldr`` pages are a community effort to simplify the beloved man pages with practical examples

## Command
```txt
tldr [OPTION]... [COMMAND]

-u, --update, --update_cache
	Update the local cache of pages and exit

-s, --source
	Override the default page source (default: https://raw.githubusercontent.com/tldr-pages/tldr/main/pages)
-p, --platform [android|freebsd|linux|netbsd|openbsd|osx|sunos|windows|common]
	Define the source plataform to look up for the command
-l, --list
	List all available commands for operating system

-r, --render
	Render local markdown files
-m, --markdown
	Just print the plain page file
-L, --language
	Override the default language


-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Links
[github.com](https://github.com/tldr-pages/tldr/tree/main)
[tldr.sh](https://tldr.sh/)
[tldr.inbrowser.app](https://tldr.inbrowser.app/pages/common/tldr)
