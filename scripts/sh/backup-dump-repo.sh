BACKUPPATH=$1
# BACKUPPATH=/tmp/backup/forgejo

# Create folders & Chown
sudo mkdir -p /var/lib/forgejo/backups
sudo chown git:git /var/lib/forgejo/backups
sudo chmod 750 /var/lib/forgejo/backups

# Doctor check
sudo -u git forgejo doctor check --all \
  -w /var/lib/forgejo \
  -c /etc/forgejo/app.ini >> /var/lib/forgejo/backups/forgejo-doctor-check.txt

# Dump forgejo
sudo -u git forgejo dump \
  -w /var/lib/forgejo \
  -c /etc/forgejo/app.ini \
  --type tar.gz \
  -f /var/lib/forgejo/backups/forgejo.tar.gz

# Extract backup and delete archive
tar -xzf /var/lib/forgejo/backups/forgejo.tar.gz -C $BACKUPPATH/forgejo/
rm /var/lib/forgejo/backups/forgejo.tar.gz

# Create destination folder
mkdir -p $BACKUPPATH
# Move everything inside the final backup
mv /var/lib/forgejo/backups/* $BACKUPPATH