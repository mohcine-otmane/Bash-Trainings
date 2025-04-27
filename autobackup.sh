#!/bin/bash

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"

mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"

echo "Backup completed from $SOURCE_DIR to $BACKUP_DIR."
