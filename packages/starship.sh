#!/bin/bash

source lib/bashrc_lib.sh

starship(){
    yes "" | curl -sS https://starship.rs/install.sh | sh -s -- --yes
    add_section "STARSHIP" 'eval "$(starship init bash)"'
}