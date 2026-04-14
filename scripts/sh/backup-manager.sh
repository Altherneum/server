BACKUPPATH=$1
# BACKUPPATH=/tmp/backup

# Purge backup & redo them
rm -rf /tmp/backup/

mkdir -p $BACKUPPATH/forgejo
/scripts/sh/backup-dump-repo.sh $BACKUPPATH/forgejo/

mkdir -p $BACKUPPATH/bot/files
/scripts/sh/backup-dump-folder.sh DiscordBot / $BACKUPPATH/DiscordBot/files

mkdir -p $BACKUPPATH/plugin/files
/scripts/sh/backup-dump-folder.sh Serveurs / $BACKUPPATH/Serveurs/files

mkdir -p $BACKUPPATH/code-server/
cp -r /home/vscode/repo/* $BACKUPPATH/code-server/

# Give admin user permissions
chown -R admin:admin $BACKUPPATH
chmod -R 700 $BACKUPPATH

# Download from server to PC
# scp -r admin@altherneum.fr:/tmp/backup/ /home/admin/backup