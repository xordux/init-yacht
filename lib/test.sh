#!/bin/bash

test_yatch(){
    failed=0
    echo "Performing test..."
    source lib/bashrc_lib.sh
    add_section "BASE-INSTALL" "echo 'Base install ADD section'"
    append_to_section "BASE-INSTALL" "echo 'Base install APPEND command'"
    add_section "BASE-INSTALL2" "echo 'Base install ADD section'"
    append_to_section "BASE-INSTALL2" "echo 'Base install 2 APPEND command'"
    add_section "BASE-INSTALL3" "echo 'Base install ADD section'"
    append_to_section "BASE-INSTALL3" "echo 'Base install APPEND command'"
    remove_section "BASE-INSTALL"
    remove_section "BASE-INSTALL3"

    # check if BASE-INSTALL2 exists in .bashrc
    if grep -q "# Yatch: BASE-INSTALL2 START" ~/.bashrc; then
        echo "PASSED: Section with tag 'BASE-INSTALL2' exists."
    else
        echo "FAILED: Section with tag 'BASE-INSTALL2' does not exist."
        failed=1
    fi

    # check if APPEND command exists in BASE-INSTALL2 section
    if grep -q "echo 'Base install 2 APPEND command'" ~/.bashrc; then
        echo "PASSED: Command 'echo 'Base install 2 APPEND command'' exists in BASE-INSTALL2 section."
    else
        echo "FAILED: Command 'echo 'Base install 2 APPEND command'' does not exist in BASE-INSTALL2 section."
        failed=1
    fi

    remove_section "BASE-INSTALL2"
    # check if BASE-INSTALL2 exists in .bashrc
    if grep -q "# Yatch: BASE-INSTALL2 START" ~/.bashrc; then
        echo "FAILED: Section with tag 'BASE-INSTALL2' exists."
        failed=1
    else
        echo "PASSED: Section with tag 'BASE-INSTALL2' does not exist."
    fi

    if [ $failed -eq 1 ]; then
        echo "Test failed."
        exit 1
    else
        echo "Test passed."
        exit 0
    fi
}