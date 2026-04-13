# Configuration
# REPO_OWNER="your-username"
REPO_OWNER=$1
# REPO_NAME="your-repo"
REPO_NAME=$2
BACKUP_FILE="${REPO_NAME}_backup.tar.gz"
# TEMP_DIR="/tmp/forgejo-dump"
TEMP_DIR=$3

# Restore the repository
forgejo restore-repo \
  --file "$BACKUP_FILE" \
  --owner_name "$REPO_OWNER" \
  --repo_name "$REPO_NAME" \
  --tempdir "$TEMP_DIR" \
  --validation

if [ $? -eq 0 ]; then
  echo "Repository imported successfully from $BACKUP_FILE"
else
  echo "Import failed!" >&2
  exit 1
fi