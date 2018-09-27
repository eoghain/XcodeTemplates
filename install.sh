#! /bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for dir in */; do
    `mkdir -p ~/Library/Developer/Xcode/Templates/File\ Template/Custom\ Templates/${dir}`
    for file in `ls ${dir}`; do
        if [[ $file == *.xctemplate ]]
        then
            `cp -r ${dir}${file} ~/Library/Developer/Xcode/Templates/File\ Template/Custom\ Templates/${dir}.`
        fi
    done
done
IFS=$SAVEIFS