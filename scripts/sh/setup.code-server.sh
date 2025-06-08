VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

# sudo ln -s ../sites-available/code-server /etc/apacge2/sites-available/code-server
# or clone whats inside

# add certbot domain code. to this one

# User add "vscode" to avoid root passive SU power
USER=vscode
sudo systemctl enable --now code-server@$USER

# systemctl status code-server@vscode # Remove when finished
##############################################################
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.379Z] info  Using user-data-dir /home/vscode/.local/share/code-server
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.513Z] info  Using config file /home/vscode/.config/code-server/config.yaml
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.514Z] info  HTTP server listening on http://127.0.0.1:8080/
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.514Z] info    - Authentication is enabled
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.519Z] info      - Using password from /home/vscode/.config/code-server/config.yaml
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.521Z] info    - Not serving HTTPS
#Jun 08 04:28:48 altherneum.fr code-server[1576704]: [2025-06-08T02:28:48.525Z] info  Session server listening on /home/vscode/.local/share/code-server/code>

# /home/vscode/.config/code-server/config.yaml
echo "bind-addr: 127.0.0.1:6700" > /home/vscode/.config/code-server/config.yaml
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
