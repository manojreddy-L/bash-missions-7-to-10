#!/bin/bash

read -p "Enter filename to search in: " filename
read -p "Enter the word to search for: " word

if [[ ! -f "$filename" ]]; then
  echo "❌ File not found."
  exit 1
fi

if grep -q "$word" "$filename"; then
  echo "✅ '$word' found in file:"
  grep "$word" "$filename"
else
  echo "🔍 '$word' not found in $filename."
fi

