VERSION=4.100.3
curl -fOL https://github.com/coder/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb
sudo dpkg -i code-server_${VERSION}_amd64.deb


# User add "vscode" to avoid root passive SU power
USER=vscode
sudo systemctl enable --now code-server@$USER
