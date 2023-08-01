#!/bin/bash
while [ true ];do
log_file="system_info.log"

date_time=$(date "+%d-%m-%y %H:%M:%S")
echo "Date & Time : $date_time" >> $log_file

cpu_usage=$(top -bn1| grep "Cpu(s)" | awk '{print $2+$4}')
echo "CPU Usage : $cpu_usage" >> $log_file

Memory=`free | grep Mem | awk '{print ($3/$2)*100}'`
echo "Memory : $Memory" >> $log_file

Swap_Memory=`free | grep Swap | awk '{print ($3/$2)*100}'`
echo "Swap Memory : $Swap_Memory" >> $log_file

Disk_Usage=`df -h | awk '{print $3}'`
echo "Disk Usage : $Disk_Usage" >> $log_file
done


