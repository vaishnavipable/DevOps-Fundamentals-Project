#!/bin/bash

PROJECT_DIR="/home/ubuntu/DevOps-Fundamentals-Project"
BACKUP_DIR="$PROJECT_DIR/Backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/website_backup_$TIMESTAMP.tar.gz"

echo "===== Website Backup Started ====="

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" -C "$PROJECT_DIR" index.html

if [ $? -eq 0 ]; then
    echo "Backup created successfully!"
    echo "Backup location: $BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi

echo "===== Website Backup Completed ====="
