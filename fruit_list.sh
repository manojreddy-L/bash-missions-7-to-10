#!/bin/bash

fruits=("apple" "banana" "mango" "grape" "kiwi")

echo "🍎 First fruit: ${fruits[0]}"
echo "🥝 Last fruit: ${fruits[${#fruits[@]}-1]}"
echo "🧺 Full fruit basket:"

for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done


