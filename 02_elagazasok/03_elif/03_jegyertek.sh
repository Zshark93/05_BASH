#!/bin/bash

echo "Adj meg egy jegyet:"
read jegy

if [ "$jegy" -eq 5 ];
then
    echo "Jeles."
elif [ "$jegy" -eq 4 ];
then
    echo "Jó."
elif [ "$jegy" -eq 3 ];
then
    echo "Közepes."
elif [ "$jegy" -eq 2 ];
then
    echo "Elégséges."
else
    echo "Elégtelen."
fi
