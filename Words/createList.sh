#! /bin/bash

for o in {0..5}
do
    file="ordered-10e${o}"
    amount=$((10**$o))
    echo $fileNum
    cat ordered.txt | head -n "$amount" | sort > "$file".txt
done

for rev in {0..5}
do
    file="reverse-ordered-10e${rev}"
    amount=$((10**$rev))
    echo $fileNum
    cat reverse-ordered.txt | head -n "$amount" | sort -r > "$file".txt
done

for r in {0..5}
do
    file="random-10e${r}"
    amount=$((10**$r))
    echo $fileNum
    cat random.txt | head -n "$amount" | sort -R > "$file".txt
done
