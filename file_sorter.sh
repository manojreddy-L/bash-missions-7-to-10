#!/bin/bash

read -p "Enter the filename to sort: " filename

if [[ ! -f "$filename" ]]; then
  echo "❌ File does not exist."
  exit 1
fi

sorted_file="sorted_$filename"
sort "$filename" > "$sorted_file"
echo "✅ Sorted file saved as: $sorted_file"

