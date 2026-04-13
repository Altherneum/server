# Stop forgejo
sudo systemctl stop forgejo
sudo systemctl stop forgejo-runner

# Créer le répertoire avec les bons droits
sudo rm -rf /tmp/forgejo-restore
sudo mkdir -p /tmp/forgejo-restore
sudo chown git:git /tmp/forgejo-restore

# Extraire
sudo -u git unzip -q /tmp/backup/backup.zip -d /tmp/forgejo-restore

# Restaure App.ini
sudo cp /tmp/forgejo-restore/app.ini /etc/forgejo/app.ini
sudo chown git:git /etc/forgejo/app.ini
sudo chmod 640 /etc/forgejo/app.ini

# Set back files
sudo rsync -a --chown=git:git /tmp/forgejo-restore/data/ /var/lib/forgejo/data/

# Set back repos
sudo rsync -a --chown=git:git /tmp/forgejo-restore/repos/ /var/lib/forgejo/data/forgejo-repositories/

# Start forgejo
sudo systemctl start forgejo
sudo systemctl start forgejo-runner

# Clear
sudo rm -rf /tmp/forgejo-restore

sudo -u git forgejo doctor check --all \
  -w /var/lib/forgejo \
  -c /etc/forgejo/app.ini >> /forgejo-doctor-after_import.txt