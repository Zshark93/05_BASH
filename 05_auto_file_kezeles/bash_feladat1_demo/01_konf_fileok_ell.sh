#!/bin/bash

cd bash_feladat1_demo || exit

fajlok=("nginx.conf" "app.env" "db.conf" "backup.conf")

for fajl in "${fajlok[@]}"
do
    if [ ! -e "$fajl" ]
    then
        echo "$fajl - hiányzik"
    elif [ -r "$fajl" ]
    then
        echo "$fajl - rendben"
    else
        echo "$fajl - nem olvasható"
    fi
done