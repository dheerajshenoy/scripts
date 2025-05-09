#!/bin/bash

# Check if a directory and at least one file name were provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file1> [file2] ..."
  echo "Example: $0 main.c utils.py"
  exit 1
fi

# Collect specified file names into an array
FILES=("$@")

# Initialize a counter for the total lines of code
total_lines=0

# Loop through each specified file name
for filename in "${FILES[@]}"; do
  # Find the file in the directory and its subdirectories
  while IFS= read -r -d '' file; do
    # Count the lines in the file
    lines=$(wc -l < "$file")
    # Add to the total count
    total_lines=$((total_lines + lines))
    echo "$file: $lines lines"
  done < <(find -type f -name "$filename" -print0)
done

# Print the total lines of code
echo "Total lines of code: $total_lines"
