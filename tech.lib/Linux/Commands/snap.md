---
package: snapd
category: command
tags:
  - system
  - system/package
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] snapd

> [!info] Manage self-contained software packages

The snap command lets you install, configure, refresh and remove snaps, packages that work across many different Linux distributions, enabling secure delivery and operation of the latest apps and utilities

## Command
```txt
snap [OPTION]... [COMMAND [OPTION]...]

-h, --help
	Display the help information and exit 
--version
	Output version information and exit

COMMANDS

	find [STRING]
		Queries the store for available packages
		--private
			Search private snaps.
		--narrow
			Only search for snaps in “stable”
	info [SNAP_NAME]
		Show detailed information about snaps. The snaps can be specified by name or by path
		--abs-time
			Display absolute times (RFC 3339)
		--verbose
			Include more details on the snap
	list
		The list command displays a summary of snaps installed in the current system
		--all
			Show all revisions


	install [SNAP_NAME]
		The install command installs the named snaps on the system. To install multiple instances of the same snap, append an underscore and a unique identifier (for each instance) to a snap's name
		--channel=[STRING]
			Use this channel instead of stable
		--classic
			Put snap in classic mode and disable security confinement
		--devmode
			Put snap in development mode and disable security confinement
		--jailmode
			Put snap in enforced confinement mode
		--dangerous
			Install the given snap file even if there are no pre-acknowledged signatures for it, meaning it was not verified and could be dangerous (implied by --devmode)
		--revision
			Install the given revision of a snap
		--ignore-validation
			Ignore validation by other snaps blocking the installation
	remove [SNAP_NAME]
		The remove command removes the named snap instance from the system
		--revision
			Remove only the given revision
		--purge
			Remove the snap without saving a snapshot of its data
	refresh [SNAP_NAME]
		The refresh command updates the specified snaps, or all snaps in the system if none are specified
		--abs-time
			Display absolute times (RFC 3339)
		--channel
			Use this channel instead of stable
		--classic
			Put snap in classic mode and disable security confinement
		--devmode
			Put snap in development mode and disable security confinement
		--jailmode
			Put snap in enforced confinement mode
		--amend
			Allow refresh attempt on snap unknown to the store
		--revision
			Refresh to the given revision
		--list
			Show the new versions of snaps that would be updated with the next refresh
		--time
			Show auto refresh information but do not perform a refresh
		--ignore-validation
			Ignore validation by other snaps blocking the refresh
		--hold=[TIME]
			Hold refreshes for a specified duration, or forever if no value is specified
		--unhold
			Remove refresh hold
	revert [SNAP_NAME]
		Reverts the given snap to its state before the latest refresh
		--classic
			Put snap in classic mode and disable security confinement
		--devmode
			Put snap in development mode and disable security confinement
		--jailmode
			Put snap in enforced confinement mode

	enable [SNAP_NAME]
		The enable command enables a snap that was previously disabled
	disable [SNAP_NAME]
		The disable command disables a snap. The binaries and services of the snap will no longer be available, but all the data is still available and the snap can easily be enabled again


	changes
		List a summary of system changes performed recently
		--abs-time
			Display absolute times (RFC 3339)
	services [STRING]
		Lists information about the services specified, or about the services in all currently installed snaps
		-g, --global
			Show the global enable status for user services instead of the status for the current user
		-u, --user
			Show the current status of the user services instead of the global enable status
	start [STRING]
		Starts and optionally enables the given services
		--system
			Afect only system services
		--user
			Afect only user services for the current user
		--enable
			Enable the service to be started on boot
	stop [STRING]
		Stops and optionally disables the given services
		--system
			Afect only system services
		--user
			Afect only user services for the current user
		--enable
			Disable the service, no longer starting on boot
	restart [STRING]
		Restart the given services
		--system
			Afect only system services
		--user
			Afect only user services for the current user
		--reload
			If the service has a reload command, execute it instead of restarting
	logs [STRING]
		Fetches logs of the given service and displays then in chronological order
		--abs-time
			Display absolute times (RFC 3339)
		-f
			Wait for new lines and print as they come in

	connections [SNAP_NAME]
		Lists connections between plugs and slots in the system
		--all
			Show connected and unconnected plugs and slots		
	interface [STRING]
		Shows details of snap interfaces
		--attrs
			Show interface attributes
		--all
			Include unused interfaces
				

	alias [SNAP_NAME] [STRING]
		Set up a manual alias
	aliases [SNAP_NAME]
		List aliases in the system or only the aliases defined by the specified snap
	unalias [STRING]
		Removes a single alias if the provided argument is a manual alias, or disables all aliases of a snap, including manual ones, if the argument is a snap name
	prefer [SNAP_NAME]
		Enables all aliases of the given snap in preference to conflicting aliases of other snaps whose aliases will be disabled


	login 
		Authenticates the user to snapd and the snap store, and saves credentials into the ~/.snap/auth.json file. Further communication with snapd will then be made using those credentials
	logout
		Logs the current user out of snapd and the store
	whoami
		Show the email the user is logged in with


	warnings
		Lists the warnings that have been reported to the system
		--abs-time
			Display absolute times (RFC 3339)
		--all
			Show all warnings
		--verbose
			Show more information
	okay
		The okay command acknowledges the warnings listed with 'snap warnings'. Once acknowledged a warning won't appear again unless it re-occurrs and sufficient time has passed
```

## Links
[github.com](https://github.com/canonical/snapcraft)
[snapcraft.io](https://snapcraft.io/)
[snapcraft.io/docs](https://snapcraft.io/docs)
