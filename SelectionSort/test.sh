#! /bin/bash

for o in {0..4}
do
    file="ordered-10e${o}"
    echo $file
    ##for each file 0-5, run 5 tests
    for run in {0..4}
    do
	TIMEFORMAT=%R
	time cat ../Words/$file.txt | swift main.swift > /dev/null
    done
done


for rev in {0..4}
do
    file="reverse-ordered-10e${rev}"
    echo $file
    ##for each file 0-5, run 5 tests
    for run in {0..4}
    do
	TIMEFORMAT=%R
	time cat ../Words/$file.txt | swift main.swift >/dev/null
    done
done

for r in {0..4}
do
    file="random-10e${r}"
    echo $file
    ##for each file 0-5, run 5 tests
    for run in {0..4}
    do
	TIMEFORMAT=%R
	time cat ../Words/$file.txt | swift main.swift >/dev/null
    done
done
