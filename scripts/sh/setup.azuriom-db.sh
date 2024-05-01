# azuriom files for copyright
mkdir -p /var/www/html/resources/views/custom
wget -O /var/www/html/resources/views/custom/body.blade.php 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/resources/views/custom/body.blade.php'

# azuriom images
mkdir -p /var/www/html/storage/app/public/img
wget -O /var/www/html/storage/app/public/img/background.jpg 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/background.jpg'
wget -O /var/www/html/storage/app/public/img/gif.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/gif.gif'
wget -O /var/www/html/storage/app/public/img/icone.png 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/icone.png'
wget -O /var/www/html/storage/app/public/img/small.gif 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/small.gif'
wget -O /var/www/html/storage/app/public/img/small.png 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/img/small.png'

# azuriom shop images
mkdir -p /var/www/html/storage/app/public/packages
#
wget -O /var/www/html/storage/app/public/packages/dN7BlGBqaEu4AsIK3LGm65gQMdn79b3jTrpYyOH8.webp 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/packages/dN7BlGBqaEu4AsIK3LGm65gQMdn79b3jTrpYyOH8.webp'
wget -O /var/www/html/storage/app/public/packages/do4nC1tRZnYFmhSqRlFT6TJla2D8G9NRa8wpZYqd.webp 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/packages/do4nC1tRZnYFmhSqRlFT6TJla2D8G9NRa8wpZYqd.webp'
wget -O /var/www/html/storage/app/public/packages/gU3xh3crQbvcSkez1RaC5hfy1H1SLvKSRl3AaYhZ.webp 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/packages/gU3xh3crQbvcSkez1RaC5hfy1H1SLvKSRl3AaYhZ.webp'
wget -O /var/www/html/storage/app/public/packages/3YYoySEyHRE96Go88s2EOZQKWEtTGuPSUqFGEme3.webp 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/packages/3YYoySEyHRE96Go88s2EOZQKWEtTGuPSUqFGEme3.webp'
wget -O /var/www/html/storage/app/public/packages/KGiFBysVRTCCHpywcDlYacOC658Ct3aSjANumpfY.webp 'https://raw.githubusercontent.com/Altherneum/server/main/var/www/html/storage/app/public/packages/KGiFBysVRTCCHpywcDlYacOC658Ct3aSjANumpfY.webp'

# azuriom database website
mkdir -p /scripts/database
#
wget -O '/scripts/database/settings.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/settings.sql'
mysql site < /scripts/database/settings.sql
#
wget -O '/scripts/database/social_links.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/social_links.sql'
mysql site < /scripts/database/social_links.sql
#
wget -O '/scripts/database/navbar_elements.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/navbar_elements.sql'
mysql site < /scripts/database/navbar_elements.sql
#
wget -O '/scripts/database/images.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/images.sql'
mysql site < /scripts/database/images.sql
#
wget -O '/scripts/database/shop_categories.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/shop_categories.sql'
mysql site < /scripts/database/shop_categories.sql
#
wget -O '/scripts/database/shop_packages.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/shop_packages.sql'
mysql site < /scripts/database/shop_packages.sql
#
# wget -O '/scripts/database/servers.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/servers.sql'
mysql site < /scripts/database/servers.sql
#
# wget -O '/scripts/database/users.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/scripts/database/users.sql'
mysql site < /scripts/database/users.sql
#
# Clean Azuriom cache after this to update website