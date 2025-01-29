#!/bin/bash

mkdir -p even odd

n=1

for file in electron_scattering_data; do
    if [ -f "$file" ]; then
        if (( $n % 2 == 0 )); then
            mv "$file" ./odd/
        else
            mv "$file" ./even/
        fi
        (($n++))
    fi
done
