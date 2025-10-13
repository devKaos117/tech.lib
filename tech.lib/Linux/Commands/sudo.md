---
category: cli
subjects:
  - binary
language: c
tags:
  - NULL
package: sudo
category: command
tags:
  - linux/cmds/system/user
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] sudo

> [!info] Executes a single command as another user

Executes a single command or open a terminal session as another user. The system administrator can use it to delegate authority, according to the policies specified in the [[Linux/File Hierarchy Standard#/etc|/etc/sudoers]] file, and allow users to run commands as root or another user while providing an audit trail of the commands and their arguments

## Command
```txt
sudo [OPTIONS]... [COMMAND]

--
Delimit the end of the sudo options. Subsequent options are passed to the command

-u, --user=[UNAME|UID]
	Run the command as a user other than the default target user
-g, --group=[GNAME|GID]
	Run the command with the primary group set to the given one instead of the specified by the target user's password database entry
-P, --preserve-groups
	Preserve the invoking user's group vector unaltered
-v, --validate
	Update the user's cached credentials, authenticating the user if necessary
-N, --no-update
	Do not update the user's cached credentials, even if the user successfully authenticates

-D, --chdir=[PATH]
	Run the command in the specified directory instead of the current working directory
-R, --chroot=[PATH]
	Change to the specified root directory before running the command
-h, --host=[HOST]
	Run the command on the specified host if the security policy plugin supports remote commands
-b, --background
	Run the given command in the background. It is not possible to use shell job control to manipulate background processes started by sudo
-e, --edit
	Edit one or more files instead of running a command
-l, --list
	If no command is specified, list the privileges for the invoking user (or the user specified by the -U option) on the current host. If a command is specified and is permitted by the security policy for the invoking user (or the, user specified by the -U option) on the current host, the fully-qualified path to the command is displayed along with any args
-U, --other-user=[UNAME|UID]
	Used in conjunction with the -l option to list the privileges for user
-n, --non-interactive
	Avoid prompting the user for input of any kind. If a password is required for the command to run, sudo will display an error message and exit

-T, --command-timeout=[TIME]
	Used to set a timeout for the command. If the timeout expires before the command has exited, the command will be terminated
-E, --preserve-env
	Indicates to the security policy that the user wishes to preserve their existing environment variables
--preserve-env=[VARIABLES]
	Indicates to the security policy that the user wishes to add the comma-separated list of environment variables to those preserved from the user's environment
-K, --remove-timestamp
	Similar to the -k option, except that it removes every cached credential for the user, regardless of the terminal or parent process ID
-k, --reset-timestamp
	When used without a command, invalidates the user's cached credentials for the current session. The next time sudo is run in the session, a password must be entered if the security policy requires authentication

-S, --stdin
	Write the prompt to the standard error and read the password from the standard input instead of using the terminal device
-s, --shell
	Run the shell specified by the SHELL environment variable if it is set or the shell specified by the invoking user's password database entry
-C, --close-from=[NUMBER]
	Close all file descriptors greater than or equal to NUMBER (>3) before executing a command. By default, sudo will close all open file descriptors other than standard input, standard output, and standard error when executing a command
-A, --askpass
	When a password is required, a (possibly graphical) helper program is executed to read the user's password and output it standard output. The askpass program must be specified through the SUDO_ASKPASS environment variable or sudo.conf
-B, --bell
	Ring the bell as part of the password prompt when a terminal is present
-i, --login
	Run the shell specified by the target user's password database entry as a login shell. This means that login-specific resource files such as .profile, .bash_profile, or .login will be read by the shell
-p, --prompt=[PROMPT]
	Use a custom password PROMPT with optional escape sequences

-r, --role=[STRING]
		Run the command with an SELinux security context that includes the specified role
-t, --type=[STING]
	Run the command with an SELinux security context that includes the specified type
-H, --set-home
	Request that the security policy set the $HOME environment variable to the home directory specified by the target user's password database entry

-h, --help
	Display the help information and exit 
-V, --version
	Output version information and exit
```

## Exit Status
Upon successful execution of a command, the exit status will be the exit status of the program that was executed. If the command terminated due to receipt of a signal, ``sudo`` will send itself the same signal that terminated the command.

If the ``-l`` option was specified without a command, ``sudo`` will exit with a value of 0 if the user is allowed to run it and they authenticated successfully. If the ``-l`` option was specified with a command, the exit value will only be 0 if the command is permitted by the security policy, otherwise it will be 1.

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/sudo-project/sudo)
[sudo.ws](https://www.sudo.ws/)
[linux.die.net](https://linux.die.net/man/8/sudo)
