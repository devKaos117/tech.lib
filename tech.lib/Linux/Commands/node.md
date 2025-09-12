---
package: nodejs
category: command
tags:
  - cli
  - cli/development
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] nodejs

> [!info] Node.js interactive shell

Open-source V8 JS engine runtime environment designed to host server-side scripts. Can be installed through [[nvm]]

## Command
```txt
node [OPTION]... [PATH] [ARGUMENT]...

--title=[STRING]
	Specify process title on startup
-i, --interactive
	Open the REPL even if stdin does not appear to be a terminal
--watch
	Starts Node.js in watch mode
--test
	Starts the Node.js command line test runner
	
-c, --check
	Check the script's syntax without executing it.  Exits with an error code if script is invalid
--inspect=[HOST:PORT]
	Activate inspector on the given host and port
--trace-events-enabled
	Enable the collection of trace event tracing information
--trace-event-categories [v8|node.[async_hooks|bootstrap|console|threadpoolwork.[sync|async]|dns.native|net.native|environment|fs.[sync|async]|fs_dir.[sync|async]|perf|promises.rejections|vm.script|http|module_timer]]...
	A comma-separated list of categories that should be traced when trace event tracing is enabled
--v8-options
	Print V8 command-line options
-r, --require [MODULE]
	Preload the specified module at startup

-h, --help
	Display the help information and exit 
-v, --version
	Output version information and exit
```

## Links
[github.com](https://github.com/nodejs)
[nodejs.org](https://nodejs.org/)
[nodejs.org/docs](https://nodejs.org/docs/latest/api/)
