#!/bin/bash

TARGET_DIR="$HOME/Downloads"

mkdir -p "$TARGET_DIR/Images" "$TARGET_DIR/Documents" "$TARGET_DIR/Others"

for file in "$TARGET_DIR"/*; do
    case "$file" in
        *.jpg|*.png) mv "$file" "$TARGET_DIR/Images/" ;;
        *.txt|*.pdf) mv "$file" "$TARGET_DIR/Documents/" ;;
        *) mv "$file" "$TARGET_DIR/Others/" ;;
    esac
done

echo "Files organized!"
