# Variables

# Variables - Azuriom DB
DB_PWD="PASSWORD@Secret9876543210!"
DB_NAME="site"
DB_USER="azuriom"

# Variables - PHPMyAdmin
PHP_MA_PWD="PASSWORD@Secret9876543210!"
PHP_MA_USER="phpmyadmin";


# MYSQL

# Azuriom DB
mysql -e "CREATE USER '${DB_USER}'@'127.0.0.1' IDENTIFIED BY '${DB_PWD}';"
mysql -e "CREATE DATABASE ${DB_NAME};"
mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'127.0.0.1' WITH GRANT OPTION;"

# PHPMyAdmin
# mysql -e "ALTER USER '${PHP_MA_USER}'@'localhost' IDENTIFIED BY '${PHP_MA_PWD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${PHP_MA_USER}'@'localhost' WITH GRANT OPTION;"
