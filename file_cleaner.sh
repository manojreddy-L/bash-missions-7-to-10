#!/bin/bash

read -p "Enter filename to clean: " filename

if [[ ! -f "$filename" ]]; then
  echo "❌ File not found."
  exit 1
fi

output="cleaned_$filename"

# Remove blank lines and comment lines
grep -v -E '^\s*$|^\s*#' "$filename" > "$output"

echo "✅ Cleaned file saved as: $output"

