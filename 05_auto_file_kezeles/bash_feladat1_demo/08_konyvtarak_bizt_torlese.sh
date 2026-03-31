#!/bin/bash

cd bash_feladat8_demo || exit

while read mappa
do
    if [ -d "$mappa" ]
    then
        rmdir "$mappa" 2>/dev/null

        if [ $? -eq 0 ]
        then
            echo "$mappa - üres mappa törölve"
        else
            rm -r "$mappa"
            echo "$mappa - nem üres mappa törölve"
        fi
    else
        echo "$mappa - hiányzik"
    fi
done < torlendo_mappak.txt