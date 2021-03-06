git-backup
==========


Git-backup v0.2b - August 18th 2012


## NAME
git-backup \- automates the process of creating a backup git bundle of a git repository


## SYNOPSIS
git backup [-d DESTINATION DIR] [-f BUNDLENAME]


## DESCRIPTION
Will run git bundle to create a backup of your git repository in the directory set in your git config file. Use git-restore to unpack a bundle made by git-backup


## INSTALLATION
Use 'sudo install.sh' to copy this script to a directory in your path. Make sure it has executable permissions. The man page will be copied to "/usr/local/man".


## CONFIGURATION
Optionally you can set the following directives in your git configuration file

Please note that git prioritizes more local config files as explained in the manpage for git-config:
The .git/config file in each repository is used to store the
configuration for that repository, and $HOME/.gitconfig is used to store a per-user configuration as fallback values for the .git/config file. The file /etc/gitconfig
can be used to store a system-wide default configuration.

	backup.directory   = string  -- the directory for the backup bundles                                   -- default = the directory where your repo is located
	backup.prefix-date = boolean -- will prepend the filename with a date in the format: "YYYY-MM-DD - "   -- default = true
	backup.prefix-time = boolean -- will propend the filename with a time in the format: "HH:MM:SS - "     -- default = false


## OPTIONS

-d, --directory <dir name>

	The destination directory if you want to override the git config value

-f, --filename  <filename>

	If you don't want to use the git repository name. Note that this still sets the date prefix and .git-bundle as extension. You can turn of the date prefix in the git config file. Probably in the future a raw filename option will be allowed so you can be sure of the created filename.


## SEE ALSO
git-restore(1), git(1), git-clone(1), git-pull(1)

https://github.com/najamelan/git-backup


## BUGS
This is beta software. There is no automated testing and the feature set is limited.

Please create bug reports and feature requests in the issue tracker of github or better do a pull request.

For the moment this uses git-bundle. It seems very hard to gain an exact copy of a repository with git bundle. For example the following won't be copied:

- .git/exclude
- .git/config -> user section
- ... potentially some more things

So why not use tar or duplicity? We could and probably will at some point. One of the advantages of git bundle is it's improved compression. It repacks the object files and I think it gives a smaller file. Should be tested.

On the other hand, backup utilities that do exactly this already exists (eg. backup-ninja).


## AUTHOR
Naja Melan najamelan@autistici.org