BACKUPPATH=$1
# BACKUPPATH=/tmp/backup

# Purge backup & redo them
rm -rf /tmp/backup/

/scripts/sh/backup-dump-repo.sh $BACKUPPATH/forgejo/
/scripts/sh/backup-dump-folder.sh DiscordBot / $BACKUPPATH
/scripts/sh/backup-dump-folder.sh Serveurs / $BACKUPPATH
/scripts/sh/backup-dump-folder.sh repo /home/vscode/ $BACKUPPATH

tar -czf $BACKUPPATH/../backup.tar.gz $BACKUPPATH

# Give admin user permissions
chown admin:admin $BACKUPPATH/../backup.tar.gz
chmod 600 $BACKUPPATH/../backup.tar.gz

# Download from server to PC
# scp -r admin@altherneum.fr:/tmp/backup.tar.gz /home/admin/backup