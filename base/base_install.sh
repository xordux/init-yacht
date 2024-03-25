#!/bin/bash

source lib/bashrc_lib.sh

base_install(){
    add_section "BASE-INSTALL" "echo 'Base install ADD section'"
    append_to_section "BASE-INSTALL" "echo 'Base install APPEND command'"
    remove_section "BASE-INSTALL"
}