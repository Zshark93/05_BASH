#!/bin/bash

cd bash_feladat4_demo || exit

felhasznalok=("anna" "bela" "dani" "emma")

for felhasznalo in "${felhasznalok[@]}"
do
    alap="felhasznalok/$felhasznalo"

    if [ ! -d "$alap" ]
    then
        mkdir -p "$alap/Dokumentumok"
        mkdir -p "$alap/Letöltések"
        mkdir -p "$alap/Munka"
        echo "$felhasznalo - home mappa és 3 almappa létrehozva"
    else
        darab=0

        if [ ! -d "$alap/Dokumentumok" ]
        then
            mkdir -p "$alap/Dokumentumok"
            darab=$((darab + 1))
        fi

        if [ ! -d "$alap/Letöltések" ]
        then
            mkdir -p "$alap/Letöltések"
            darab=$((darab + 1))
        fi

        if [ ! -d "$alap/Munka" ]
        then
            mkdir -p "$alap/Munka"
            darab=$((darab + 1))
        fi

        if [ $darab -eq 0 ]
        then
            echo "$felhasznalo - rendben"
        else
            echo "$felhasznalo - $darab mappa létrehozva"
        fi
    fi
done