# Forgejo actions
## https://forgejo.org/docs/next/admin/actions/runner-installation/#starting-the-runner
## Variables
ARCH=$(uname -m | sed 's/x86_64/amd64/;s/aarch64/arm64/')
RUNNER_VERSION=$(curl -X 'GET' https://data.forgejo.org/api/v1/repos/forgejo/runner/releases/latest | jq .name -r | cut -c 2-)
FORGEJO_URL="https://code.forgejo.org/forgejo/runner/releases/download/v$RUNNER_VERSION/forgejo-runner-$RUNNER_VERSION-linux-$ARCH"
echo Architecture : $ARCH
echo Runner version : $RUNNER_VERSION
echo Latest URL : $FORGEJO_URL

## GPG checkup
wget -O forgejo-runner $FORGEJO_URL
chmod +x forgejo-runner

## Téléchargement
wget -O forgejo-runner.asc $FORGEJO_URL.asc
gpg --keyserver hkps://keys.openpgp.org --recv EB114F5E6C0DC2BCDD183550A4B61A2DC5923710
gpg --verify forgejo-runner.asc forgejo-runner && echo "✓ Verified" || echo "✗ Failed"

## Copy bin
cp forgejo-runner /usr/local/bin/forgejo-runner

## Show version
forgejo-runner -v

## User creation
useradd --create-home runner

## Docker install
/scripts/sh/setup.forgejo.docker.sh
### Docker user
usermod -aG docker runner

## Switch to runner
sudo su runner
whoami
cd ~
pwd

## Register
TOKEN=""
### Set this token with https://git.altherneum.fr/admin/actions/runners
forgejo-runner register --no-interactive --token $TOKEN --name self-hosted --instance http://127.0.0.1:3003 --labels ubuntu-latest:docker://ubuntu:22.04,docker:docker://node:20-bookworm

## Leave runner account & go back to root
exit

## Add SystemD service
wget -O /etc/systemd/system/forgejo-runner.service https://code.forgejo.org/forgejo/runner/raw/branch/main/contrib/forgejo-runner.service

## forgejo-runner configuration
mkdir -p /etc/forgejo-runner
forgejo-runner generate-config > /etc/forgejo-runner/runner.yaml

## Start with systemD
systemctl start forgejo-runner
systemctl enable forgejo-runner
systemctl status forgejo-runner

## Docker in docker install
#/scripts/sh/setup.forgejo.dockerindocker.sh