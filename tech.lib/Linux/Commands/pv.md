---
category: cli
subjects:
  - binary
language: c
package: pv
tags:
  - linux/cmds/operation/analysis
  - linux/cmds/system/process
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] pv

> [!info] Monitor the progress of data through a pipe

Shows the progress of data through a pipeline. Its standard input will be passed through to its standard output and progress will be shown on standard error

## Command
```txt
pv [OPTION]... [PATH]...
pv -pterb

DISPLAY SWITCHES
	-p, --progress
		Turn the progress bar on
	-A, --last-written [NUMBER]
		Show the last NUMBER bytes written
	-n, --numeric
		Instead of a visual indication of progress, gives an integer percentage, one per line, on standard error, suitable for piping into dialog
	
	-t, --timer
		Turn the timer on, displaying the total elapsed time that pv has been running for
	-e, --eta
		Turn the ETA timer on, attempting to guess, based on current transfer rates and the total data size, how long it will be before completion
	-I, --fineta
		Turn the ETA timer on, but display the estimated local time of arrival instead of time left
	
	-r, --rate
		Turn the rate counter on, displaying the current rate of data transfer
	-a, --average-rate
		Turn the average rate counter on, displaying the current average rate of data transfer
	-b, --bytes
		Turn the total byte counter on, displaying the total amount of data transferred so far
	-8, --bits
		Display the total bits instead of the total bytes
	-T, --buffer-percent
		Turn on the transfer buffer percentage display, showing the percentage of the transfer buffer in use
	
	-F, --format [PATTERN]
		Ignore the options -p, -t, -e, -r, -a, -b, -T, and -A, and instead use the PATTERN to determine the output format
	-q, --quiet
		Gives no output

FORMATTING PATTERN
	
	%%
		A single %
	%p
		Progress bar. Expands to fill the remaining space
	%t
		Elapsed time
	%e
		ETA as time remaining
	%I
		ETA as local time of completion
	%r
		Current data transfer rate
	%a
		Average data transfer rate
	%b
		Data transferred so far
	%T
		Percentage of the transfer buffer in use
	%[NUMBER]A
		Show the last NUMBER bytes written
	%[STRING]
		Prefix the output information with STRING. Padded to 9 characters with spaces, and suffixed with :

OUTPUT MODIFIERS
	
	-s, --size [BYTES|@PATH]
		Assume the total amount of data to be transferred is BYTES bytes when calculating percentages and ETAs
	-l, --line-mode
		Instead of counting bytes, count newline characters. The progress bar will only move when a new line is found, and the value passed to the -s option will be interpreted as a line count
	-0, --null
		Count lines as terminated with a zero byte instead of with a newline. This option implies --line-mode
	-m, --average-rate-window [NUMBER]
		Compute current average rate over a NUMBER seconds window for average rate and ETA calculations (default: 30)
	
	-W, --wait
		Wait until the first byte has been transferred before showing any progress information or calculating any ETAs
	-D, --delay-start [NUMBER]
		Wait until NUMBER seconds have passed before showing any progress information
	-i, --interval [NUMBER]
		Wait NUMBER seconds between updates (default: 1)
	
	-w, --width [NUMBER]
		Assume the terminal is NUMBER characters wide
	-H, --height [NUMBER]
		Assume the terminal is NUMBER rows high
	-N, --name [STRING]
		Prefix the output information with STRING
	-f, --force
		Force to output visual display even if standard error is not a terminal
	-c, --cursor
		Use cursor positioning escape sequences instead of just using carriage returns

DATA TRANSFER MODIFIERS

	-S, --stop-at-size
		If a size was specified with -s, stop transferring data once that many bytes have been written
	-L, --rate-limit [BYTES]
		Limit the transfer to a maximum of BYTES bytes per second
	-B, --buffer-size [BYTES]
		Use a transfer buffer size of BYTES bytes (default: input_bs*32 | 400KiB)
	-E, --skip-errors
		Ignore read errors by attempting to skip past the offending sections. The corresponding parts of the output will be null bytes, skiping a few bytes at first, increasing to chunks of 512 on multiple errors. intended to be similar to $(dd conv=sync,noerror)
	-Z, --error-skip-block [BYTES]
		When ignoring read errors with -E, instead of trying to adaptively skip by reading small amounts and skipping progressively larger sections until a read succeeds, move to the next file block of BYTES bytes as soon as an error occurs
	-Y, --sync
		After every write operation, synchronise the buffer caches to disk (system call fdatasync)
	
	-d, --watchfd [NUMBER][:FD]
		Instead of transferring data, watch file descriptor FD of process NUMBER, and show its progress
	-R, --remote [NUMBER]
		If NUMBER is an instance of pv that is already running, it will cause that instance to act as though it had been given this instance's command line instead
	
	-C, --no-splice
		Never use the splice system call, even if it would normally be possible
	-K, --direct-io
		Set the O_DIRECT flag on all inputs and outputs, if it is available
	-X, --discard
		Instead of transferring input data to standard output, discard it

GENERAL OPTIONS

	-P, --pidfile [PATH]
		Save the process ID of pv in FILE. The file will be replaced if it already exists, and will be removed when pv exits
	
	-h, --help
		Display the help information and exit 
	-V, --version
		Output version information and exit
```

## Exit Status
- 0 - Success
- 1 - Problem with -R or -P
- 2 - One or more files could not be accessed
- 4 - An input file was the same as the output file
- 8 - Internal error with closing a file or moving to the next file
- 16 - There was an error while transferring data from one or more input files
- 32 - A signal was caught that caused an early exit
- 64 - Memory allocation failed

## Relevant Reading
- [[]]

## External Reference
[codeberg.org](https://codeberg.org/ivarch/pv)
[ivarch.com/pv](https://ivarch.com/programs/pv.shtml)
[linux.die.net](https://linux.die.net/man/1/pv)
