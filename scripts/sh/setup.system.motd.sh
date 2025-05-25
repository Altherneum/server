sudo chmod -x /etc/update-motd.d/*
sudo mv /etc/update-motd.d/* /etc/update-motd.d/backup/

wget -O /etc/update-motd.d/01-altherneum 'https://raw.githubusercontent.com/Altherneum/server/main/etc/update-motd.d/01-altherneum'
chmod +x /etc/update-motd.d/01-altherneum

systemctl restart ssh