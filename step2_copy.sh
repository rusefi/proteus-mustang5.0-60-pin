#!/bin/bash

if [ ! -f hellen-one/git_scripts ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi

cd hellen-one
python3 ./bin/copy_from_Kicad.py "frames:proteus-mustang5.0-" ".." "../../gerber" "60-pin" "a"

echo "Done!"
