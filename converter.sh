#!/bin/bash

# Check if a directory path argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-directory>"
    exit 1
fi

# Assign the first argument to DIR_PATH variable
DIR_PATH="$1"

# Check if the provided path is a valid directory
if [ ! -d "$DIR_PATH" ]; then
    echo "Error: The provided path '$DIR_PATH' is not a valid directory."
    exit 1
fi

# Check if there are any .HEIC files in the directory
if compgen -G "${DIR_PATH}/*.HEIC" > /dev/null; then
    # Loop through each .HEIC file in the specified directory
    for file in "${DIR_PATH}"/*.HEIC; do
        # Extract the filename without extension
        filename=$(basename "$file" .HEIC)
        # Convert to jpeg using sips
        sips -s format jpeg "$file" --out "${DIR_PATH}/${filename}.jpg"
        echo "Converted $file to ${DIR_PATH}/${filename}.jpg"
    done
else
    echo "No .HEIC files found in the specified directory '$DIR_PATH'."
fi
