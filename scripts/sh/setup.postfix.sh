echo "postfix postfix/main_mailer_type select Internet Site" | sudo debconf-set-selections
echo "postfix postfix/mailname string altherneum.fr" | sudo debconf-set-selections
echo "postfix postfix/destinations string altherneum.fr, localhost.localdomain, localhost" | sudo debconf-set-selections

# Install Postfix
sudo apt-get update
sudo apt-get install -y postfix
sudo systemctl restart postfix
# Penser à couper sendmail et migrer les scripts