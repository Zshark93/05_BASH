#!/bin/bash

cd bash_feladat5_demo || exit

scriptek=("backup.sh" "rotate.sh" "monitor.sh" "deploy.sh" "cleanup.sh")

for script in "${scriptek[@]}"
do
    if [ ! -f "$script" ]
    then
        echo "$script - hiányzik"
    elif [ -x "$script" ]
    then
        echo "$script - rendben"
    else
        chmod +x "$script"
        echo "$script - jogosultság javítva"
    fi
done