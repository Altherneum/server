systemctl stop code-server@vscode

VERSION=4.117.0
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb

wget -O /etc/systemd/system/code-server@vscode.service -L 'https://raw.githubusercontent.com/Altherneum/server/refs/heads/main/scripts/code-server@vscode.service'

systemctl deamon-reload

systemctl start code-server@vscode
systemctl status code-server@vscode