#!/bin/bash

cd bash_feladat7_demo || exit

fajlok=("current.log" "error.log" "db.old" "report.txt" "image.png" "notes.md")

for fajl in "${fajlok[@]}"
do
    if [[ "$fajl" == *.log ]] || [[ "$fajl" == *.old ]]
    then
        mv "$fajl" "archivum/archiv_$fajl"
        echo "$fajl - archiválva"
    else
        echo "$fajl - meghagyva"
    fi
done