#!/bin/bash

colors=()
echo "🎨 Enter 3 of your favorite colors:"

for i in {1..3}; do
  read -p "Color $i: " color
  colors+=("$color")
done

echo -e "\n🌈 Your colors in reverse order:"
for (( i=${#colors[@]}-1; i>=0; i-- )); do
  echo "- ${colors[$i]}"
done

