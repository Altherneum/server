VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

USER=vscode
sudo systemctl enable --now code-server@$USER

# /home/vscode/.config/code-server/config.yaml
echo "bind-addr: 127.0.0.1:8080" > /home/vscode/.config/code-server/config.yaml
echo "auth: password" >> /home/vscode/.config/code-server/config.yaml
password=ABC123!
echo "password: $password" >> /home/vscode/.config/code-server/config.yaml
echo "cert: true" >> /home/vscode/.config/code-server/config.yaml

# Apache2
a2enmod proxy proxy_http
a2enmod proxy_wstunnel
a2enmod headers

# Password file
htpasswd -cb /etc/apache2/.htpasswd vscode $password

systemctl restart apache2
