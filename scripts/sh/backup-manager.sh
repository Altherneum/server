BACKUPPATH=$1
# BACKUPPATH=/tmp/backup

mkdir -p $BACKUPPATH/bot/repo 
mkdir -p $BACKUPPATH/bot/files
/scripts/sh/backup-dump-repo.sh Altherneum bot $BACKUPPATH/bot/repo
/scripts/sh/backup-dump-folder.sh DiscordBot / $BACKUPPATH/bot/files

mkdir -p $BACKUPPATH/plugin/repo
mkdir -p $BACKUPPATH/plugin/files
/scripts/sh/backup-dump-repo.sh Altherneum plugin $BACKUPPATH/plugin/repo
/scripts/sh/backup-dump-folder.sh Serveurs / $BACKUPPATH/plugin/files
###
mkdir -p $BACKUPPATH/server/repo
/scripts/sh/backup-dump-repo.sh Altherneum server $BACKUPPATH/server/repo

#/scripts/sh/backup-dump-repo.sh Altherneum texturePackOrRessourcePackIDKName $BACKUPPATH/.../repo
#/scripts/sh/backup-dump-repo.sh Altherneum ... $BACKUPPATH/.../repo
# Altherneum.github.io
# .github
# ...

