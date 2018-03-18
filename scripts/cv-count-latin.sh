#!/bin/bash

# Sync Common Voice from latest commit
cd ../../voice-web
git pull
git fetch –prune

# Copy sample texts to Common Texts folder
cp -avr server/data/* ../common-text/texts/en

# Move to Common Text repository
cd ../common-text

# Sort and calculate all words from .txt files (excluding the not-used/ folder)
cat texts/en/*.txt | tr 'A-Z' 'a-z' | sed 's/--/ /g' | sed 's/[^a-z ]//g' | tr -s '[[:space:]]' '\n' | sort | uniq -c | sort -n | tail -n 9999999999 | cat > stats/en.txt
