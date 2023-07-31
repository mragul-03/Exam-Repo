#!/bin/bash

file="demo.txt"
old_word=$1
new_word=$2

sed -i "s/$old_word/$new_word/g" "$file"
