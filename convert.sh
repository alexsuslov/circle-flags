#!/bin/bash

mkdir -p png
mkdir -p webp

for file in flags/*.svg ; do
    filename=$(basename "$file")
    name=${filename%.*}
    rsvg-convert -h 120 -o png/${name}.png ${file}
    magick png/${name}.png webp/${name}.webp
done
