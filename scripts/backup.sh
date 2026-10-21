#!/bin/bash

PROJECT_DIR="/home/ubuntu/DevOps-Fundamentals-Project"
WEBSITE_DIR="/var/www/html"
BACKUP_DIR="$PROJECT_DIR/Backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/website_backup_$TIMESTAMP.tar.gz"

echo "===== Website Backup Started ====="

mkdir -p "$BACKUP_DIR"

if tar -czf "$BACKUP_FILE" -C "$WEBSITE_DIR" .; then
    echo "Backup created successfully!"
    echo "Backup location: $BACKUP_FILE"
    echo "Files included in backup:"
    tar -tzf "$BACKUP_FILE"
    echo "===== Website Backup Completed ====="
else
    echo "ERROR: Backup failed."
    rm -f "$BACKUP_FILE"
    exit 1
fi
