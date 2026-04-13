BACKUPPATH=$1
# BACKUPPATH=/tmp/backup

# Purge backup & redo them
rm -rf /tmp/backup/

mkdir -p $BACKUPPATH/forgejo
/scripts/sh/backup-dump-repo.sh $BACKUPPATH/forgejo/

mkdir -p $BACKUPPATH/bot/files
/scripts/sh/backup-dump-folder.sh DiscordBot / $BACKUPPATH/bot/files

mkdir -p $BACKUPPATH/plugin/files
/scripts/sh/backup-dump-folder.sh Serveurs / $BACKUPPATH/plugin/files

mkdir -p $BACKUPPATH/code-server/
cp -r /home/vscode/repo/* $BACKUPPATH/code-server/