sudo chmod -x /etc/update-motd.d/*
sudo mv /etc/update-motd.d/* /etc/update-motd.d/backup/

wget -O /etc/update-motd.d/01-altherneum 'https://raw.githubusercontent.com/Altherneum/server/main/etc/update-motd.d/01-altherneum'
chmod +x /etc/update-motd.d/01-altherneum

echo "https://altherneum.fr" > /etc/motd
echo "https://doc.altherneum.fr" >> /etc/motd
echo "https://code.altherneum.fr" >> /etc/motd
echo "" >> /etc/motd
