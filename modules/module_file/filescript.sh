#!/bin/bash

# Ensure the argument ($1) is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <number_of_files>"
    exit 1
fi

# Create target directory if it doesn't exist
mkdir -p ./demofiles/demo_archive/ ./demofiles/unarchive_files

# Use seq to handle the variable range properly
for i in $(seq 1 $1); do
    echo "Creating file: demo${i}file.txt"
    
    # Define file path
    FILE_PATH="./demofiles/demo_archive/demo${i}file.txt"
    
    # Create file and add content
    echo "Hi this is content of demo${i}file.txt" > "$FILE_PATH"
done

