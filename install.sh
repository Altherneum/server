# Update + APT
apt update
apt install -y mysql-server phpmyadmin screen vsftpd openjdk-21-jdk curl wget unzip php php-fpm php-mysql php-pgsql php-sqlite3 php-bcmath php-mbstring php-xml php-curl php-zip php-gd apache2 sendmail fail2ban

mkdir -p /scripts/sh

# user creation
/scripts/sh/setup.system.user.sh

# SSH configuration
wget -O /scripts/sh/setup.system.ssh.sh 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/sh/setup.system.ssh.sh'
chmod +x /scripts/sh/setup.system.ssh.sh
/scripts/sh/setup.system.ssh.sh

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