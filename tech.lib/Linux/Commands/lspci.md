---
package: pciutils
category: command
tags:
  - system
  - system/hardware
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] pciutils

> [!info] List all PCI devices

Utility for displaying information about PCI buses in the system and devices connected to them

## Favorite Uses
```sh
lspci -vv -s $(lspci | grep -i [PATTERN] | cut -d ' ' -f 1 )
```

## Command
```txt
lspci [OPTION]...

-v
	Be verbose and display detailed information about all devices
-vv
	Be very verbose and display more details. This level includes everything deemed useful
-vvv
	Be even more verbose and display everything we are able to parse
-k
	Show kernel drivers handling each device and also kernel modules capable of handling it (default in -v)
-t
	Show a tree-like diagram containing all buses, bridges, devices and connections between them

-s [[DOMAIN]:[BUS]:[DEVICE].[FUNCTION]]
	Show only devices in the specified DOMAIN (0-ffff), BUS (0-ff), DEVICE (0-1f) and FUNCTION (0-7)
-d [[VENDOR]:[DEVICE]:[CLASS]:[PROGRAMMING_INTERFACE]]
	Show only devices with specified vendor, device, class ID, and programming interface (hexadecimal)

-m
	Dump PCI device data in a backward-compatible machine readable form
-mm
	Dump PCI device data in a machine readable form for easy parsing by scripts

-x
	Show hexadecimal dump of the standard part of the configuration space
-xxx
	Show hexadecimal dump of the whole PCI configuration space
-xxxx
	Show hexadecimal dump of the extended PCI configuration space available on PCI-X 2.0 and PCI Express buses

-M
	Invoke bus mapping mode which performs a thorough scan of all PCI devices, including those behind misconfigured bridges
-b
	Bus-centric view. Show all IRQ numbers and addresses as seen by the cards on the PCI bus instead of as seen by the kernel
-D
	Always show PCI domain numbers
-P
	Identify PCI devices by path through each bridge, instead of by bus number
-PP
	Identify PCI devices by path through each bridge, showing the bus number as well as the device number

-n
	Show PCI vendor and device codes as numbers instead of looking them up in the PCI ID list
-nn
	Show PCI vendor and device codes as both numbers and names
-Q
	Query the central database even for entries which are recognized locally

--version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/8/lspci)
