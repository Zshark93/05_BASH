#!/bin/bash
# "if" ezzel mondjuk meg a bashnak, hogy egy feltételes vizsgálat lesz
# [] - közötti közötti részben adjuk meg a feltételt
# az "if" eldönti, hogy egy adott feltétel igaz, vagy sem
# visszatérési értéke egy boolean, vagy amit megadunk neki
if [kondíció, feltétel]
# then segítségével mondjuk meg, mi történjen, hogyha a feltételünk igaz volt.
then
# itt adjuk meg, hogy mi legyen a végrehajtandó művelet
    utasítások
# a "fi" segítségével mondjuk meg a bash-nak, hogy vége van a műveletnek
fi

## Összehasonlító jelek számokkal!
# "-eq" egyenlő-e? --> megnézni, hogy a és b egyenlő-e
# ha igen akkor feltétel true 