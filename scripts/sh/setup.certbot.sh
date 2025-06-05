service apache2 stop
# Certbot https
apt install -y snapd
snap install --classic certbot
#
ln -s /snap/bin/certbot /usr/bin/certbot
#
certbot --apache certonly --agree-tos --register-unsafely-without-email -d altherneum.fr -d www.altherneum.fr -d play.altherneum.fr -d mc.altherneum.fr -d minecraft.altherneum.fr -d windows.altherneum.fr -d microsoft.altherneum.fr -d wiki.altherneum.fr -d info.altherneum.fr -d git.altherneum.fr -d github.altherneum.fr -d docs.altherneum.fr
sudo certbot renew --dry-run
#
service apache2 start