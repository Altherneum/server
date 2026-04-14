folderNAME=$1
# folderNAME=bot
folderPATH=$2
# folderPATH=/
backupPATH=$3
# backupPATH=/tmp/backup

mkdir -p $backupPATH

# tar czf $backupPATH/$folderNAME.tar.gz $folderPATH/$folderNAME
cp $folderPATH/$folderNAME $backupPATH/$folderNAME