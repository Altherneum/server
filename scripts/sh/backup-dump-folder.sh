folderNAME=$1
# folderNAME=bot
folderPATH=$2
# folderPATH=/
backupPATH=$3
# backupPATH=/tmp/backup

tar czf $backupPATH/$folderNAME.tar.gz $folderPATH/$folderNAME