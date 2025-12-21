# Forgejo
## VARIABLES
VERSIONID="13.0.3"
FORGEJOVERSION="v"$VERSIONID
FORGEJOVERSIONNAME="forgejo-"$VERSIONID
LINUXVERSION="linux-amd64"
FORGEJOFILENAME=$FORGEJOVERSIONNAME"-"$LINUXVERSION
FORGEJOFULLFILENAME=$FORGEJOVERSION"/"$FORGEJOFILENAME
## Téléchargement
### https://forgejo.org/download/
echo "Downloading : "$FORGEJOFULLFILENAME
wget -O /tmp/$FORGEJOVERSIONNAME https://code.forgejo.org/forgejo/forgejo/releases/download/$FORGEJOFULLFILENAME

## GPG checkup
gpg --keyserver keys.openpgp.org --recv EB114F5E6C0DC2BCDD183550A4B61A2DC5923710
wget -O /tmp/$FORGEJOVERSIONNAME.asc https://code.forgejo.org/forgejo/forgejo/releases/download/$FORGEJOFULLFILENAME.asc
gpg --verify /tmp/$FORGEJOVERSIONNAME.asc /tmp/$FORGEJOVERSIONNAME
### Vérifier si /$FORGEJOFILENAME.asc to delete or not

## Copy & chmod
### https://forgejo.org/docs/latest/admin/installation/binary/
### https://forgejo.org/docs/latest/admin/setup/reverse-proxy/
cp /tmp/$FORGEJOVERSIONNAME /usr/local/bin/forgejo
rm $FORGEJOVERSIONNAME
chmod 755 /usr/local/bin/forgejo

## User creation
adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git

## Folders & chown
### lib
mkdir /var/lib/forgejo
chown git:git /var/lib/forgejo && chmod 750 /var/lib/forgejo
### data & Repo
mkdir /etc/forgejo
chown root:git /etc/forgejo && chmod 770 /etc/forgejo
### log
mkdir /var/log/forgejo
chown git:git /var/log/forgejo && chmod 750 /var/log/forgejo

## SystemD
wget -O /etc/systemd/system/forgejo.service https://code.forgejo.org/forgejo/forgejo/raw/branch/forgejo/contrib/systemd/forgejo.service
systemctl daemon-reload

## app.ini
### https://forgejo.org/docs/latest/admin/config-cheat-sheet/
tee /etc/forgejo/app.ini >/dev/null <<EOF
[server]
DOMAIN = git.altherneum.fr
HTTP_ADDR = 127.0.0.1
HTTP_PORT = 3003
ROOT_URL = https://git.altherneum.fr/
APP_DATA_PATH = /var/lib/forgejo/data
[database]
DB_TYPE = sqlite3
PATH = /var/lib/forgejo/data/forgejo.db
[repository]
ROOT = /var/lib/forgejo/data/repositories
[log]
MODE = file
LEVEL = info
ROOT_PATH = /var/log/forgejo
EOF
chown git:git /etc/forgejo/app.ini

# Password file
password="ABC123!"
htpasswd -cb /etc/apache2/.htpasswd-git git $password

## Start
systemctl enable forgejo.service
systemctl start forgejo.service