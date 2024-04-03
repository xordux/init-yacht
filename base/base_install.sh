#!/bin/bash

source packages/alias.sh
source packages/starship.sh
source packages/fzf.sh
source packages/vscode_cli.sh

base_install(){
    alias
    starship
    fzf
    vscode_cli
    sudo dnf install azure-cli  -y
    sudo dnf install rpm-build -y
}