# Forgejo
## VARIABLES
VERSIONID="13.0.3"
FORGEVERSION="v"$VERSIONID
FORGEVERSIONNAME="forgejo-"$VERSIONID
LINUXVERSION="linux-amd64"
FORGEJOFILENAME=$FORGEVERSIONNAME"-"$LINUXVERSION
FORGEJOFULLFILENAME=$FORGEVERSION"/"$FORGEJOFILENAME
echo $FORGEJOFULLFILENAME

## Téléchargement
# https://forgejo.org/download/
wget -O /abc https://code.forgejo.org/forgejo/forgejo/releases/download/$FORGEJOFULLFILENAME
chmod +x $FORGEJOFILENAME

## GPG checkup
gpg --keyserver keys.openpgp.org --recv EB114F5E6C0DC2BCDD183550A4B61A2DC5923710
wget https://codeberg.org/forgejo/forgejo/releases/download/$FORGEJOFULLFILENAME.asc
gpg --verify $FORGEJOFILENAME.asc $FORGEJOFILENAME

## Copy & chmod
sudo cp $FORGEJOFILENAME /usr/local/bin/forgejo
sudo chmod 755 /usr/local/bin/forgejo