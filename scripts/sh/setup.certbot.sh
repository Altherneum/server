service apache2 stop
# Certbot https
apt install -y snapd
snap install --classic certbot
#
ln -s /snap/bin/certbot /usr/bin/certbot
#
certbot --apache --agree-tos --register-unsafely-without-email -d altherneum.fr -d www.altherneum.fr -d play.altherneum.fr -d mc.altherneum.fr
sudo certbot renew --dry-run
#
service apache2 start