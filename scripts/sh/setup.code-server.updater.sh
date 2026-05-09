systemctl stop code-server@vscode

VERSION=4.118.0
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

systemctl deamon-reload

systemctl start code-server@vscode
systemctl status --no-pager -l code-server@vscode