#!/bin/bash


files=$(git diff --name-only | grep '\.yaml')
echo "Executando lint..."
yamlfix "$files"
echo "Adicionando os arquivos "$fies" corrigidos no commit"
git add $files
done