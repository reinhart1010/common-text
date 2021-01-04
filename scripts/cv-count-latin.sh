#!/bin/bash

# Sync Common Voice from latest commit
cd ../../voice-web
git pull
git fetch –prune

# Copy sample texts to Common Texts folder
cd server/data
for lang in */ ; do
    mkdir ../../../common-text/stats/$lang
    mkdir ../../../common-text/stats/$lang/raw
    cp -avr $lang/* ../../../common-text/stats/$lang/raw
done

# Move to Common Text repository
# Sort and calculate all words from .txt files (excluding the not-used/ folder)
cd ../../../common-text/stats
for lang in */ ; do
    cd $lang
    echo $PWD
    # Sort and calculate all words from .txt files (excluding the not-used/ folder)
    cat raw/*.txt | tr 'A-Z' 'a-z' | tr '\xc0-\xd6' '\xe0-\xf6' | tr '\xd8-\xde' '\xf8-\xfe' | sed 's/--/ /g' | sed 's/[^a-z \xe0-\xf6\xf8-\xfe]//g' | tr -s '[[:space:]]' '\n' | sort | uniq -c | sort -n | tail -n 9999999999 | cat > words.txt
    # Collect these values to a JSON file
    cat words.txt | sed 's/^[ \t]*//' | sed 's/[ \t]/,/' | cat > words.csv
    cd ../
done
