#!/bin/bash

input="input.log"
output="output.log"

head -n 10 "$input" > "$output"
tail -n 10 "$input" >> "$output"
