service apache2 stop
# Certbot https
apt install -y snapd
snap install --classic certbot
#
ln -s /snap/bin/certbot /usr/bin/certbot
#
certbot --apache certonly --agree-tos --register-unsafely-without-email -d altherneum.fr -d www.altherneum.fr -d play.altherneum.fr -d mc.altherneum.fr -d code.altherneum.fr -d 3000.code.altherneum.fr -d vscode.altherneum.fr -d arch.altherneum.fr -d archterneum.altherneum.fr -d git.arch.altherneum.fr -d minecraft.altherneum.fr -d windows.altherneum.fr -d microsoft.altherneum.fr -d wiki.altherneum.fr -d info.altherneum.fr -d git.altherneum.fr -d github.altherneum.fr -d docs.altherneum.fr -d fuckmicrosoft.altherneum.fr -d fuckwindows.altherneum.fr -d keeweb.altherneum.fr -d keepass.altherneum.fr -d keys.altherneum.fr -d key.altherneum.fr
sudo certbot renew --dry-run
