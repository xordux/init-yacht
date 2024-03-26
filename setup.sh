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

test(){
    echo "Performing test..."
    source lib/test.sh
    test_yatch
}

while getopts ":bft" opt; do
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
        t)
            echo "Test option selected"
            test
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