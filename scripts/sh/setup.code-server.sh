VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

USER=vscode
sudo systemctl enable --now code-server@$USER

# /home/vscode/.config/code-server/config.yaml
echo "bind-addr: 0.0.0.0:8443" > /home/vscode/.config/code-server/config.yaml
echo "auth: password" >> /home/vscode/.config/code-server/config.yaml
password=ABC123!
echo "password: $password" >> /home/vscode/.config/code-server/config.yaml
echo "cert: false" >> /home/vscode/.config/code-server/config.yaml

# SystemD (SystemCTL)
wget -O /etc/systemd/system/code-server@vscode.service -L 'https://raw.githubusercontent.com/Altherneum/server/refs/heads/main/scripts/code-server@vscode.service'
systemctl deamon-reload

# Apache2
a2enmod proxy proxy_http
a2enmod proxy_wstunnel
a2enmod headers

# Password file
htpasswd -cb /etc/apache2/.htpasswd vscode $password

systemctl restart apache2
systemctl enable code-server@vscode.service
systemctl start code-server@vscode.service
