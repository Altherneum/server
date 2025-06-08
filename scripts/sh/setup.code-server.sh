VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

# sudo ln -s ../sites-available/code-server /etc/apacge2/sites-available/code-server
# or clone whats inside

# add certbot domain code. to this one

# User add "vscode" to avoid root passive SU power
USER=vscode
sudo systemctl enable --now code-server@$USER
