#!/bin/bash
Memory=`free | grep Mem | awk '{print ($3/$2)*100}'`
echo "$Memory %"
