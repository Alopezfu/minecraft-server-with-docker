#!/bin/sh

TIMESTAMP=$(date +"%d-%m-%Y_%H:%M:%S")
BACKUP_DIR="/backups"
WORLD_DIR="/server/world"

# Check if world directory exists
if [ ! -d "$WORLD_DIR" ]; then
  echo "World directory $WORLD_DIR does not exist!"
  exit 1
fi

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Create a compressed tarball of the world directory
tar -czf $BACKUP_DIR/world_backup_$TIMESTAMP.tar.gz $WORLD_DIR

# Keep only the 4 most recent backups, delete the rest
ls -1t $BACKUP_DIR/world_backup_*.tar.gz | tail -n +5 | xargs -r rm --