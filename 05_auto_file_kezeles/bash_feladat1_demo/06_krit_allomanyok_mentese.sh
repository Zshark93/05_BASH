#!/bin/bash

cd bash_feladat6_demo || exit

fajlok=("app.conf" "users.db" "tokens.env" "service.ini" "naplo.log")
datum=$(date +%Y%m%d)

for fajl in "${fajlok[@]}"
do
    if [ ! -f "$fajl" ]
    then
        echo "$fajl - nem található"
    elif [ ! -w "mentesek" ]
    then
        echo "$fajl - a mentesek mappa nem írható"
    else
        cp "$fajl" "mentesek/${fajl}_$datum"
        echo "$fajl - mentve"
    fi
done