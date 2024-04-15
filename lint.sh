#!/bin/bash


files=$(git diff --name-only)
for file in $files; do
    if [[ $file == *.yaml ]]; then
        yamlfix "$file"
        echo "yamlfix applicado no arquivo: $file"
    fi
done

echo "executando"
git add . 