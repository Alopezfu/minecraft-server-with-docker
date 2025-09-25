#!/bin/sh

# Create a backup of the Minecraft world
TIMESTAMP=$(date +"%d-%m-%Y_%H:%M:%S")
BACKUP_DIR="/backups"
WORLD_DIR="/server/world"

tar -czf $BACKUP_DIR/world_backup_$TIMESTAMP.tar.gz $WORLD_DIR

# Keep only the 4 most recent backups, delete the rest
ls -1t $BACKUP_DIR/world_backup_*.tar.gz | tail -n +5 | xargs -r rm --