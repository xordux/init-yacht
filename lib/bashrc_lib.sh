#!/bin/bash
# This script contains functions manipulate the .bashrc file.


# Function to add a section in .bashrc file
add_section() {
    local tag="$1"
    local command="$2"
    local start_comment="# Yatch: $tag START"
    local end_comment="# Yatch: $tag END"

    # Check if the section already exists
    if grep -q "$start_comment" ~/.bashrc; then
        echo "Section with tag '$tag' already exists."
        return 1
    fi

    # Add the section to .bashrc file
    echo "$start_comment" >> ~/.bashrc
    echo "$command" >> ~/.bashrc
    echo "$end_comment" >> ~/.bashrc

    echo "Section with tag '$tag' added successfully."
}

# Function to remove a section from .bashrc file
remove_section() {
    local tag="$1"
    local start_comment="# Yatch: $tag START"
    local end_comment="# Yatch: $tag END"

    # Check if the section exists
    if ! grep -q "$start_comment" ~/.bashrc; then
        echo "Section with tag '$tag' does not exist."
        return 1
    fi

    # Remove the section from .bashrc file
    sed -i "/$start_comment/,/$end_comment/d" ~/.bashrc

    echo "Section with tag '$tag' removed successfully."
}

# Function to append a command to a section in .bashrc file
append_to_section() {
    local tag="$1"
    local command="$2"
    local start_comment="# Yatch: $tag START"
    local end_comment="# Yatch: $tag END"

    # Check if the section exists
    if ! grep -q "$start_comment" ~/.bashrc; then
        echo "Section with tag '$tag' does not exist."
        return 1
    fi

    # Append the command to the section in .bashrc file
    sed -i "/$end_comment/i $command" ~/.bashrc

    echo "Command appended to section with tag '$tag' successfully."
}

# Usage examples
# add_section "MY_SECTION" "echo 'This is my section'"
# append_to_section "MY_SECTION" "echo 'This is another command'"
# remove_section "MY_SECTION"
