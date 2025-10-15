---
category: cli
subjects:
  - binary
language: c
package: git
tags:
  - linux/cmds/file/backup
  - linux/cmds/network/sending
---

`$= dv.el('span',dv.current().file.mtime)`
> [!package] git

> [!info] Distributed version control system

Free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency

## Command
```txt
git [OPTION]... [COMMAND] [ARGUMENTS]...

OPTIONS

	-C [PATH]
		Run with PATH as the working directory
	-c [OPTION=VALUE]...
		Pass a configuration parameter to the command. The OPTION is expected in the same format as listed by git config
	--config-env=[OPTION=ENVORIMENT_VARIABLE]
		Set a command configuration parameter to be retrieved from an environment variable
	
	-p, --paginate
		Pipe all output into less (or $PAGER) if standard output is a terminal
	-P, --no-pager
		Do not pipe Git output into a pager
	--list-cmds=[builtins,parseopt,main,others,list-[CATEGORY],nohelpers,alias,config]...
		List commands by group
	
	-h, --help
		Display the help information and exit 
	-v, --version
		Output version information and exit

COMMANDS

	add
		Add file contents to the index
	commit
		Record changes to the repository
	push
		Update remote refs along with associated objects
	merge
		Join two or more development histories together
	pull
		Fetch from and integrate with another repository or a local branch
	diff
		Show changes between commits, commit and working tree, etc
	blame
		Show what revision and author last modified each line of a file
	branch
		List, create, or delete branches
	restore
		Restore working tree files
	revert
		Revert some existing commits
	switch
		Switch branches
	worktree
		Manage multiple working trees
	
	init
		Create an empty Git repository or reinitialize an existing one
	clone
		Clone a repository into a new directory
	fetch
		Download objects and refs from another repository
	archive
		Create an archive of files from a named tree
	mv
		Move or rename a file, a directory, or a symlink
	
	config
		Get and set repository or global options
	verify-commit
		Check the GPG signature of commits
	verify-tag
		Check the GPG signature of tags
	
	clean
		Remove untracked files from the working tree
	gc
		Cleanup unnecessary files and optimize the local repository
	rm
		Remove files from the working tree and from the index
	stash
		Stash the changes in a dirty working directory away
	
	status
		Show the working tree status
	help
		Display help information about Git
	notes
		Add or inspect object notes
	tag
		Create, list, delete or verify a tag object signed with GPG
	log
		Show commit logs
	show
		Show various types of objects
	describe
		Give an object a human readable name based on an available ref
	grep
		Print lines matching a pattern
	bisect
		Use binary search to find the commit that introduced a bug
	bugreport
		Collect information for user to file a bug report
	version
		Display version information about Git
	
	
	gittutorial
		A tutorial introduction to Git
	gittutorial-2
		A tutorial introduction to Git: part two
	giteveryday
		A useful minimum set of commands for Everyday Git
	gitcore-tutorial
		A Git core tutorial for developers
	gitcredentials
		Providing usernames and passwords to Git
	gitdiffcore
		Tweaking diff output
	gitglossary
		A Git Glossary
	gitworkflows
		An overview of recommended workflows with Git
```

## Relevant Reading
- [[]]

## External Reference
[github.com](https://github.com/git/git)
[git-scm.com](https://git-scm.com/)
[ndpsoftware.com](https://ndpsoftware.com/git-cheatsheet.html)
[training.github.com](https://training.github.com/)
