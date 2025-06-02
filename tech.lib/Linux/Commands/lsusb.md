---
package: usbutils
category: command
tags:
  - system
  - hardware
  - inspection
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] usbutils

> [!info] Display information about USB buses and devices connected to them

Utility for displaying information about USB buses in the system and the devices connected to them. It uses [[udev]]'s hardware database to associate a full human-readable name to the vendor ID and the product ID

## Favorite Uses
```sh
command options arguments
```

## Command
```txt
lsusb [OPTION]...

-v, --verbose
	Verbose output displaying detailed information about the devices shown
-t, --tree
	Tells lsusb to dump the physical USB device hierarchy as a tree

-D [PATH]
	Do not scan the /dev/bus/usb directory, instead display only information about the device whose device file is given
-s [[BUS]:[DEVICE_NUMBER]]
	Show only devices in specified BUS and/or DEVICE_NUMBER. Both IDs are given in decimal
-d [[VENDOR]:[PRODUCT_ID]]
	Show only devices with the specified VENDOR and PRODUCT_ID.  Both IDs are given in hexadecimal

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Links
[linux.die.net](https://linux.die.net/man/8/lsusb)
