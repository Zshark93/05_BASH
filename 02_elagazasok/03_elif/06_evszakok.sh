#!/bin/bash

echo "Adj meg egy hónapot számmal (1 és 12 között):"
read honap

if [ "$honap" -eq 12 ] || [ "$honap" -eq 1 ] || [ "$honap" -eq 2 ];
then
    echo "Tél van."
elif [ "$honap" -ge 3 ] && [ "$honap" -le 5 ];
then
    echo "Tavasz van."
elif [ "$honap" -ge 6 ] && [ "$honap" -le 8 ];
then
    echo "Nyár van."
elif [ "$honap" -ge 9 ] && [ "$honap" -le 11 ];
then
    echo "Ősz van."
else
    echo "Érvénytelen érték."
fi
