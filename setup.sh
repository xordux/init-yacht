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
    source base/base_install.sh
    base_install
}

while getopts ":bf" opt; do
    case $opt in
        b)
            echo "Base option selected"
            # Add your code for the base option here
            perform_base_setup
            ;;
        f)
            echo "Full option selected"
            # Add your code for the full option here
            perform_full_setup
            ;;
        \?)
            echo "Invalid option: -$OPTARG"
            exit -1
            ;;
    esac
done

if [ $OPTIND -eq 1 ]; then
    echo "Usage: setup.sh [-b] [-f]"
    echo "Options:"
    echo "  -b: Perform base setup"
    echo "  -f: Perform full setup"
    exit -1
fi