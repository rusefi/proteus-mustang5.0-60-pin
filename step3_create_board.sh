#!/bin/bash

if [ ! -f "hellen-one/readme.md" ]; then
    echo "No submodule? Trying to pull"
    git submodule update --init --recursive
fi

cd hellen-one
sh bin/create_board_with_prefix.sh "proteus-mustang5.0-" ".." "60-pin" "c" "bom_replace_ford-60-a.csv" "80,0"
