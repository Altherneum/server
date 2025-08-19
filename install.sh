# Host name
hostnamectl set-hostname altherneum.fr

# Update + APT
apt update
apt install -y mysql-server phpmyadmin screen vsftpd openjdk-21-jdk curl wget unzip php php-fpm php-mysql php-pgsql php-sqlite3 php-bcmath php-mbstring php-xml php-curl php-zip php-gd apache2 sendmail fail2ban git maven

mkdir -p /scripts/sh

# user creation
/scripts/sh/setup.system.user.sh

# SSH configuration
wget -O /scripts/sh/setup.system.ssh.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.ssh.sh'
chmod +x /scripts/sh/setup.system.ssh.sh
/scripts/sh/setup.system.ssh.sh

# Fail2Ban configuration
wget -O /scripts/sh/setup.system.ssh.fail2ban.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.ssh.fail2ban.sh'
chmod +x /scripts/sh/setup.system.ssh.fail2ban.sh
/scripts/sh/setup.system.ssh.fail2ban.sh

# azuriom
wget -O /scripts/sh/setup.azuriom.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom.sh'
chmod +x /scripts/sh/setup.azuriom.sh
/scripts/sh/setup.azuriom.sh
# azuriom database config
wget -O /scripts/sh/setup.azuriom-db.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.azuriom-db.sh'
chmod +x /scripts/sh/setup.azuriom-db.sh
# /scripts/sh/setup.azuriom-db.sh

# certbot
wget -O /scripts/sh/setup.certbot.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.certbot.sh'
chmod +x /scripts/sh/setup.certbot.sh
/scripts/sh/setup.certbot.sh

# Code-Server
wget -O /scripts/sh/setup.code-server.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.code-server.sh'
chmod +x /scripts/sh/setup.code-server.sh
/scripts/sh/setup.code-server.sh


# mysql
chmod +x /scripts/sh/setup.mysql.sh
/scripts/sh/setup.mysql.sh

#
service apache2 restart
#

# update
wget -O /update.sh 'https://raw.githubusercontent.com/Altherneum/server/main/update.sh'
chmod +x /update.sh
/update.sh
