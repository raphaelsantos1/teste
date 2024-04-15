#!/bin/bash


files=$(git diff --name-only | grep '\.yaml')
yamlfix "$files"
done