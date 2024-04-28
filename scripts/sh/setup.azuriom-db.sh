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
# Clean Azuriom cache after this to update website