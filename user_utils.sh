#!/bin/bash

# Function to greet the user
greet_user() {
    echo "👋 Hello, $1!"
}

# Function to check if a user exists
check_user_exists() {
    if id "$1" &>/dev/null; then
        echo "✅ User '$1' already exists."
    else
        echo "❌ User '$1' does not exist."
        echo "Attempting to create user..."
        # Uncomment the line below if running on a system with sudo and permissions
        # sudo useradd "$1"
        echo "✅ User '$1' created successfully. (Not really, it's just a demo 😎)"
    fi
}

# Main script starts here
read -p "Enter a username: " username
greet_user "$username"
check_user_exists "$username"

