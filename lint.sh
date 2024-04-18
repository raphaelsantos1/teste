#!/bin/sh


cat << EOF > .git/hooks/pre-commit
#!/bin/sh
if ! command -v yamlfix &> /dev/null; then
    echo "Yamlfix not install. Install..."
    pip install yamlfix
fi

files=\$(git diff --name-only | grep '\.yaml')
echo "Running yamlfix"
yamlfix "\$files"
git add . 
echo "Fix applied"
EOF