# Var
ROUNDCUBE_VERS="1.7.0"
DB_NAME="roundcubemail"
DB_USER="roundcube"
DB_PASSWORD="SuperPasswordLul"
APACHE_PASSWORD="AnotherGreatPassword"
htpasswd -cb /etc/apache2/.htpasswd-roundcube roundcube $APACHE_PASSWORD

# Packages
apt install -y apache2 mysql-server php php-mysql php-gd php-curl php-mbstring php-intl php-xml php-zip php-imap
a2enmod rewrite

# SQL DB
mysql -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Roundcube
wget -P /tmp -O /tmp/roundcube.tar.gz "https://github.com/roundcube/roundcubemail/releases/latest/download/roundcubemail-$ROUNDCUBE_VERS-complete.tar.gz"
mkdir -p /var/www/html/roundcube/{temp,logs}
tar xzf "/tmp/roundcube.tar.gz" -C /var/www/html/roundcube --strip-components=1

# SQL
mysql -u roundcube -p$DB_PASSWORD roundcubemail < /var/www/html/roundcube/SQL/mysql.initial.sql   

# remove /installer URL
rm -rf /var/www/html/roundcube/installer

# Copy config sample
cp /var/www/html/roundcube/config/config.inc.php.sample /var/www/html/roundcube/config/config.inc.php

chown -R www-data:www-data /var/www/html/roundcube
chmod -R 755 /var/www/html/roundcube
chmod -R 775 /var/www/html/roundcube/{temp,logs}

# Replace value
sed -i "s|\$config\['db_dsnw'\] = '.*';|\$config['db_dsnw'] = 'mysql://roundcube:your_password@localhost/roundcubemail';|" /var/www/html/roundcube/config/config.inc.php
sed -i "s|\$config\['imap_host'\] = '.*';|\$config['imap_host'] = 'localhost:143';|" /var/www/html/roundcube/config/config.inc.php
sed -i "s|\$config\['smtp_host'\] = '.*';|\$config['smtp_host'] = 'localhost:25';|" /var/www/html/roundcube/config/config.inc.php
sed -i "s|\$config\['des_key'\] = '.*';|\$config['des_key'] = '$(openssl rand -hex 12)';|" /var/www/html/roundcube/config/config.inc.php
sed -i "s|\$config\['enable_installer'\] = .*;|\$config['enable_installer'] = false;|" /var/www/html/roundcube/config/config.inc.php

# Remove the broken .htaccess
rm /var/www/html/roundcube/public_html/.htaccess # weird fix to avoid getting 403 error

# Create a symbolic link to the main .htaccess
ln -s ../.htaccess /var/www/html/roundcube/public_html/.htaccess
systemctl reload apache2