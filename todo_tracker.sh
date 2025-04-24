#!/bin/bash

# Ask user to input 5 tasks
declare -a tasks
echo "📋 Enter 5 tasks:"
for i in {1..5}; do
  read -p "Task $i: " task
  tasks+=("$task")
done

echo -e "\n🕒 Tasks in reverse order:"
for (( idx=${#tasks[@]}-1 ; idx>=0 ; idx-- )); do
  echo "- ${tasks[idx]}"
done

# Simulate completion
read -p "How many tasks did you complete? " done
left=$((5 - done))
echo "✅ Completed: $done | ⏳ Remaining: $left"

