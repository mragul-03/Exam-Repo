#!/bin/bash
#Print Date Without using Sleep command
get_current_time(){
	date +%s
}
start_time=$(get_current_time)
start=$(get_current_time)
while true;
do
	current_time=$(get_current_time)
	if [ $((current_time-start_time)) -eq 1 ];
	then
		date
		start_time=$current_time
	fi
	if [ $((current_time-start)) -eq 60 ];
	then
		break
	fi
done
