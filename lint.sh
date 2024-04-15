#!/bin/bash

if ! command -v yamlfix &> /dev/null; then
    echo "Yamlfix not install. Install..."
    pip install yamlfix
fi

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "Arquivo $file não encontrado"
        continue
    fi
    

    echo "Apply..."
    yamlfix -v $file
done