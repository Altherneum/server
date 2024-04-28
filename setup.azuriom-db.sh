wget -O '/settings.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/settings.sql'
mysql site < /settings.sql
#
wget -O '/social_links.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/social_links.sql'
mysql site < /social_links.sql
#
wget -O '/navbar_elements.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/navbar_elements.sql'
mysql site < /navbar_elements.sql
#
wget -O '/images.sql' 'https://raw.githubusercontent.com/Altherneum/server/main/images.sql'
mysql site < /images.sql
#
# Clean Azuriom cache after this to update website