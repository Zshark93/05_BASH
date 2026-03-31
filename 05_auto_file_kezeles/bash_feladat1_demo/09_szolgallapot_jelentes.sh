#!/bin/bash

cd bash_feladat9_demo || exit

szolgaltatasok=("nginx" "mysql" "redis")

echo "Szolgáltatásállapot-jelentés" > allapotjelentes.txt
echo "" >> allapotjelentes.txt

for szolgaltatas in "${szolgaltatasok[@]}"
do
    echo "$szolgaltatas:" >> allapotjelentes.txt

    if [ -f "services/$szolgaltatas.pid" ]
    then
        echo "PID fájl: rendben" >> allapotjelentes.txt
    else
        echo "PID fájl: hiányzik" >> allapotjelentes.txt
    fi

    if [ -f "configs/$szolgaltatas.conf" ]
    then
        echo "Konfiguráció: rendben" >> allapotjelentes.txt
    else
        echo "Konfiguráció: hiányzik" >> allapotjelentes.txt
    fi

    if [ -f "logs/$szolgaltatas.log" ]
    then
        echo "Logfájl: rendben" >> allapotjelentes.txt
    else
        echo "Logfájl: hiányzik" >> allapotjelentes.txt
    fi

    echo "" >> allapotjelentes.txt
done

cat allapotjelentes.txt