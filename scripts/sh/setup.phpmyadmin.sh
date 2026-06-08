
# Variables - PHPMyAdmin
PHP_MA_PWD="PASSWORD@Secret9876543210!"
PHP_MA_USER="phpmyadmin";
PHP_APACHE_PWD="SuperPasswordThere123!"

# PHPMyAdmin
mysql -e "ALTER USER '${PHP_MA_USER}'@'localhost' IDENTIFIED BY '${PHP_MA_PWD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${PHP_MA_USER}'@'localhost' WITH GRANT OPTION;"

# Remove PHPmyAdmin apache configuration
rm /etc/apache2/conf-enabled/phpmyadmin.conf

htpasswd -cb /etc/apache2/.htpasswd-phpmyadmin phpmyadmin $PHP_APACHE_PWD

echo "\$cfg['PmaAbsoluteUri'] = 'https://phpmyadmin.altherneum.fr/';" >> /etc/phpmyadmin/config.inc.php
echo "\$cfg['ForceSSL'] = true;" >> /etc/phpmyadmin/config.inc.php

touch /usr/share/phpmyadmin/.htaccess
echo "RewriteEngine On" >> /usr/share/phpmyadmin/.htaccess
echo "RewriteCond %{HTTPS} off" >> /usr/share/phpmyadmin/.htaccess
echo "RewriteRule (.*) https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]" >> /usr/share/phpmyadmin/.htaccess

systemctl reload apache2