#!/bin/bash

source lib/bashrc_lib.sh

starship(){
    curl -sS https://starship.rs/install.sh | sh
    add_section "STARSHIP" 'eval "$(starship init bash)"'
}