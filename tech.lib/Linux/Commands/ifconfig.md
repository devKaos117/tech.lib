---
package: net-tools
category: command
tags:
  - network
  - network/configuration
  - system
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] net-tools

> [!info] Network Interface Configurator

Used to configure the [[tech.lib/Linux/Kernel|kernel]]-resident network interfaces. It is used at boot time to set up interfaces as necessary, and after that, it is usually only needed when debugging or when system tuning is needed

## Command
```txt
ifconfig [OPTIONS]... [INTERFACE] [inet|inet6|ax25|ddp|ipx|netrom] [CONFIGURATION]

-a
	Display all interfaces which are currently available, even if down
-s
	Display a short list
-v
	Be more verbose for some error conditions

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit

CONFIGURATION

	up
		Causes the interface to be activated
	down
		Causes the driver for this interface to be shut down
	
	name [STRING]
		Change the name of this interface to newname. The interface must be shut down first
	hw [ether|ax25|ARCnet|netrom] [ADDRESS]
		Set the hardware address of this interface, if the device driver supports this operation
	[ADDRESS]
		The IP address to be assigned to this interface
	netmask [ADDRESS]
		Set the IP network mask for this interface. This value defaults to the usual class A, B or C network mask 
	mtu [NUMBER]
		Sets the Maximum Transfer Unit of an interface
	
	add [ADDRESS]
		Add an IPv6 address to an interface
	del [ADDRESS]
		Remove an IPv6 address from an interface
	tunnel [ADDRESS]
		Create a new SIT device, tunnelling to the given destination
	
	[-]arp
		Enable or disable the use of the ARP protocol on this interface
	[-]promisc
		Enable or disable the promiscuous mode of the interface
	[-]allmulti
		Enable or disable all-multicast mode
	
	[-]broadcast [ADDRESS]
		If the address argument is given, set the protocol broadcast address for this interface. Otherwise, set or clear the IFF_BROADCAST flag for the interface
	[-]pointopoint [ADDRESS]
		If the address argument is given, set the protocol address of the other side of the link. Otherwise, set or clear the IFF_POINTOPOINT flag for the interface
	
	irq [ADDRESS]
		Set the interrupt line used by this device
	io_addr [ADDRESS]
		Set the start address in I/O space for this device
	multicast
		Set the multicast flag on the interface. This should not normally be needed as the drivers set the flag correctly themselves
```

## Links
[linux.die.net](https://linux.die.net/man/8/ifconfig)
