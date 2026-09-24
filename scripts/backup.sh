#!/bin/bash

SOURCE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BACKUP_DIR="$HOME/linux-backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf "$BACKUP_DIR/project_$DATE.tar.gz" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup created successfully:"
    echo "$BACKUP_DIR/project_$DATE.tar.gz"
else
    echo "Backup failed."
    exit 1
fi
