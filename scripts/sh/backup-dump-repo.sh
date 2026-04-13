# REPO_OWNER="your-username"
REPO_OWNER=$1
# REPO_NAME="your-repo"
REPO_NAME=$2
OUTPUT_FILE="${REPO_NAME}_backup.tar.gz"
# TEMP_DIR="/tmp/forgejo-dump"
TEMP_DIR=$3

# Export the repository
forgejo dump-repo \
  --owner_name "$REPO_OWNER" \
  --repo_name "$REPO_NAME" \
  --type tar \
  --file "$OUTPUT_FILE" \
  --tempdir "$TEMP_DIR"

if [ $? -eq 0 ]; then
  echo "Repository exported successfully to $OUTPUT_FILE"
else
  echo "Export failed!" >&2
  exit 1
fi