wget -O /setup.azuriom-settings.sql 'https://raw.githubusercontent.com/Altherneum/server/main/setup.azuriom-settings.sql'
mysql site < /setup.azuriom-settings.sql
#
wget -O /setup.azuriom-images.sql 'https://raw.githubusercontent.com/Altherneum/server/main/setup.azuriom-images.sql'
mysql site < /setup.azuriom-images.sql
#
# WIP, feature on test / active dev
# mysql -h "server-name" -u "your_username" -p "your_password" "database-name" < "filename.sql"