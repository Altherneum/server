folderNAME=$1
# folderNAME=DiscordBot
folderPATH=$2
# folderPATH=/
backupPATH=$3
# backupPATH=/tmp/backup

mkdir -p $backupPATH/$folderNAME
echo "Creating folder : " $backupPATH/$folderNAME

# tar czf $backupPATH/$folderNAME.tar.gz $folderPATH/$folderNAME
cp -rp $folderPATH/$folderNAME $backupPATH

echo "Copy folder : " $folderPATH/$folderNAME
echo "To destination :" $backupPATH/$folderNAME