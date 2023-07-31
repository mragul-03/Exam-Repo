#!/bin/bash

split_agent(){
	agent=$(jq '.agent' cloudwatch.json)
	echo "$agent"
}

split_agent
