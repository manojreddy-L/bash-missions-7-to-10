#!/bin/bash

# Grocery list array
groceries=("milk" "bread" "eggs" "cheese" "apples")

echo "🛒 Your grocery list:"
for item in "${groceries[@]}"; do
  echo "- $item"
done

# Remove an item
read -p "Which item did you buy? " bought
for i in "${!groceries[@]}"; do
  if [[ "${groceries[i]}" == "$bought" ]]; then
    unset 'groceries[i]'
  fi
done

echo "✅ Updated grocery list:"
for item in "${groceries[@]}"; do
  echo "- $item"
done

