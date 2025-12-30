# Forgejo action docker
## https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
## Docker GPG checkup
apt update
apt install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources
tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

## Update to fetch newly added package
apt update

## Install docker
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## Start & check docker
systemctl start docker
systemctl status docker

## Test docker install
## Hello world auto closing
sudo docker run hello-world