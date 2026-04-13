BACKUPPATH=$1
# BACKUPPATH=/tmp/backup

mkdir -p $BACKUPPATH/bot/files
/scripts/sh/backup-dump-folder.sh DiscordBot / $BACKUPPATH/bot/files

mkdir -p $BACKUPPATH/plugin/files
/scripts/sh/backup-dump-folder.sh Serveurs / $BACKUPPATH/plugin/files