#!/bin/bash

fzf(){
    local start_comment="# Yatch: fzf START"
    local end_comment="# Yatch: fzf END"

    echo "$start_comment" >> ~/.bashrc
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    yes "" | ~/.fzf/install
    echo "$end_comment" >> ~/.bashrc
}