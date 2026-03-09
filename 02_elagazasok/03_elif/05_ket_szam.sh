#!/bin/bash

echo "Add meg az első számot:"
read elso

echo "Add meg a második számot:"
read masodik

if [ "$elso" -gt "$masodik" ];
then
    echo "Az első szám nagyobb."
elif [ "$elso" -lt "$masodik" ];
then
    echo "A második szám nagyobb."
else
    echo "A két szám egyenlő."
fi
