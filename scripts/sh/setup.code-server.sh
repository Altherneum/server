VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

# SystemD (SystemCTL)
# USER=vscode
# sudo systemctl enable --now code-server@$USER
wget -O /etc/systemd/system/code-server@vscode.service -L 'https://raw.githubusercontent.com/Altherneum/server/refs/heads/main/scripts/code-server@vscode.service'
systemctl deamon-reload

wget -O /home/vscode/.config/code-server/config.yaml -L 'https://raw.githubusercontent.com/Altherneum/server/refs/heads/main/home/vscode/.config/code-server/config.yaml'

# Apache2
a2enmod proxy proxy_http
a2enmod proxy_wstunnel
a2enmod headers

# Git configuration
git config --global user.name "lx78WyY0J5"
git config --global user.email "9j2k37st@gmail.com"

# Git configuration user 2
# git config user.name "userName"
# git config user.email "user.name@email.tld"

# Password file
password=ABC123!
htpasswd -cb /etc/apache2/.htpasswd vscode $password

systemctl restart apache2
systemctl enable code-server@vscode.service
systemctl start code-server@vscode.service

sudo -u vscode code-server --install-extension GitHub.vscode-pull-request-GitHub
sudo -u vscode code-server --install-extension PKief.material-icon-theme
sudo -u vscode code-server --install-extension ms-vscode.live-server
sudo -u vscode code-server --install-extension vscjava.vscode-java-pack
sudo -u vscode code-server --install-extension redhat.vscode-yaml
