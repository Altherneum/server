# Keeweb
## Enable necessary Apache modules
a2enmod dav_fs ssl rewrite

# Add password to
password="ABC123!"
htpasswd -cb /etc/apache2/.htpasswd-keeweb keeweb $password
password="ABC123!"
htpasswd -cb /etc/apache2/.htpasswd-webdav webdav $password

## Create WebDAV directory
mkdir /var/www/webdav
chown www-data:www-data /var/www/webdav
chmod 700 /var/www/webdav

## Clone KeeWeb
git clone -b gh-pages https://github.com/keeweb/keeweb.git /var/www/keeweb

sed -i "s|<meta name=\"kw-config\" content=\"(no-config)\">|<meta name=\"kw-config\" content=\"./config.json\">|" "/var/www/keeweb/index.html"

# Create config.json
cat << EOF > "/var/www/keeweb/config.json"
{
  "settings": {
    "theme": "te",
    "locale": "fr-FR",
    "webdav": true,
    "idleMinutes": 15,
    "lockOnOsLock": true,
    "lockOnMinimize": true,
    "autoSave": true,
    "autoSaveInterval": 1
    "cacheConfigSettings": true
  },
  "files": [
    {
      "storage": "webdav",
      "name": "kdbx.kdbx",
      "path": "https://keeweb.altherneum.fr/webdav/kdbx.kdbx"
    }
  ]
}
EOF

## Set proper permissions
chown -R www-data:www-data /var/www/keeweb
chmod 644 /var/www/keeweb/config.json

# Fix icons # See : https://github.com/keeweb/keeweb/issues/1315#issuecomment-3752937692
## Renaming the folder to a unique name
mv /var/www/keeweb/icons/ /var/www/keeweb/keeweb-icons

## Update each reference from /icons to /keeweb-icons
sed -i 's/"keweb-icons\//"keeweb-icons\//g' /var/www/keeweb/manifest.json

## Update reference for BrowserConfig
sed -i 's/"\/icons\//"\/keeweb-icons\//g' /var/www/keeweb/browserconfig.xml

## Update the index.html
sed -i 's/"icons\//"keeweb-icons\//g' /var/www/keeweb/index.html 

## Reload Apache
systemctl reload apache2