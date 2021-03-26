#!/bin/bash

sh ~/.fehbg

arr=("copyq" "fcitx5" "dunst" "xdman" "clipmenud" "picom" "conky")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | grep -v grep | wc -l`
    if [ $isExist = 0 ]
    then
        exec "$value" &
    fi
done
