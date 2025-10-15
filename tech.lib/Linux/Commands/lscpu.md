---
category: cli
subjects:
  - binary
language: c
package: util-linux
tags:
  - linux/cmds/system/hardware
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] util-linux

> [!info] Display information about the CPU architecture

Gathers CPU architecture information from [[sysfs]], [[Linux/File Hierarchy Standard#/proc|/proc/cpuinfo]] and any applicable architecture-specific libraries

## Command
```txt
lscpu [OPTION]...

-e, --extended=[BOGOMIPS,CPU,CORE,SOCKET,CLUSTER,NODE,BOOK,DRAWER,CACHE,POLARIZATION,ADDRESS,CONFIGURED,ONLINE,MHZ,SCALMHZ%,MAXMHZ,MINMHZ,MODELNAME]
	Display the CPU information in human-readable format. If the argument is omitted, the default columns are included in the command Output
-p, --parse=[BOGOMIPS,CPU,CORE,SOCKET,CLUSTER,NODE,BOOK,DRAWER,CACHE,POLARIZATION,ADDRESS,CONFIGURED,ONLINE,MHZ,SCALMHZ%,MAXMHZ,MINMHZ,MODELNAME]
	Optimize the command output for easy parsing. If the argument is omitted, the command output is compatible with earlier versions of lscpu
-C, --caches=[ALL-SIZE,LEVEL,NAME,ONE-SIZE,TYPE,WAYS,ALLOC-POLICY,WRITE-POLICY,PHY-LINE,SETS,COHERENCY-SIZE]...
	Display details about CPU caches. If the the argument is omitted, all columns for which data is available are included in the command output
-s, --sysroot [PATH]
	Gather CPU data for a Linux instance other than the instance from which the lscpu command is issued

--output-all
	Output all available columns. This option must be combined with either --extended, --parse or --caches
-a, --all
	Include lines for online and offline CPUs in the output. This option may only be specified together with option -e or -p (default for -e)
-b, --online
	Limit the output to online CPUs. This option may only be specified together with option -e or -p (default for -p)
-c, --offline
	Limit the output to offline CPUs. This option may only be specified together with option -e or -p

-J, --json
	Use JSON output format for the default summary or extended output
-B, --bytes
	Print the sizes in bytes rather than in a human-readable format
-x, --hex
	Use hexadecimal masks for CPU sets
-y, --physical
	Display physical IDs for all columns with topology elements
--hierarchic=[auto|*always*|never]
	Use subsections in summary output

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/util-linux/util-linux)
[linux.die.net](https://linux.die.net/man/1/lscpu)
