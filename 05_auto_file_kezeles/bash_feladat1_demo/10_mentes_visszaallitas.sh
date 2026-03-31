#!/bin/bash

cd bash_feladat10_demo || exit

echo "Aktuális mappa: $(basename "$(pwd)")"
echo "Add meg a visszaállítandó mentés nevét:"
read fajlnev

if [ -f "mentesek/$fajlnev" ]
then
    mkdir -p visszaallitva
    cp "mentesek/$fajlnev" "visszaallitva/$fajlnev"

    if [ $? -eq 0 ]
    then
        echo "$fajlnev - visszaállítás sikeres"
    else
        echo "$fajlnev - hiba történt a visszaállítás során"
    fi
else
    echo "$fajlnev - a mentés nem található"
fi