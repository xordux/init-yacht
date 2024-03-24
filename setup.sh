#!/bin/bash

# Function to perform full setup
perform_full_setup() {
    echo "Performing full setup..."
    # Add your full setup commands here
}

# Function to perform base setup
perform_base_setup() {
    echo "Performing base setup..."
    # Add your base setup commands here
}

# Check the option provided
if [[ "$1" == "full" ]]; then
    perform_full_setup
elif [[ "$1" == "base" ]]; then
    perform_base_setup
else
    echo "Invalid option. Please choose either 'full' or 'base'."
    echo "Eg: ./setup.sh full"
fi