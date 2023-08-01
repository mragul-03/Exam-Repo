#!/bin/bash

source="/home/ragul/MonitProgram/system_info.log"
dest="/home/ragul/MonitProgram/system_info.log.archive"
cat "$source" >> "$dest"
