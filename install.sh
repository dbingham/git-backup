#!/bin/bash
#

#cp --remove-destination --force git-backup  /usr/lib/git-core/
if [ -e ~/Scripts/git-backup ]; then
	rm ~/Scripts/git-backup
fi
ln -s ./git-backup ~/Scripts/
#cp --remove-destination --force git-restore /usr/lib/git-core/
if [ -e ~/Scripts/git-restore ]; then
	rm ~/Scripts/git-restore
fi
ln -s ./git-restore ~/Scripts/

gzip --to-stdout manpages/git-backup.1  > /usr/local/share/man/man1/git-backup.1.gz
gzip --to-stdout manpages/git-restore.1 > /usr/local/share/man/man1/git-restore.1.gz
