# Feltételes elágazások: ha (if)

- "if" Ezzel mondjuk meg a bashnak, hogy egy feltételes vizsgálat lesz.
- [] - közötti részben adjuk meg a feltételt.
- az "if" eldönti, higy egy adott feltétel igaz vagy sem.
- visszatérési értéke egy boolean, vagy amit megadtunk neki.

```bash
if [condicio, feltétel] 
# then segítségével mondjuk meg, mi történjen, hogyha a feltételünk igaz volt.
then
# itt adjuk meg, hogy mi legyen a végrehajtandó művelet
    utasítások
# "fi" segítségével mondjuk meg a bash-nak, hogy vége van a műveletnek
fi
```

