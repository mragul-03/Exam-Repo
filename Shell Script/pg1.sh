#!/bin/bash

get_ip(){
	public_ip=$(wget -qO- https://ipecho.net/plain)
	echo $public_ip
}

update_json_file(){
	echo "{ \"ip\": \"$public_ip\" }" > serverdetails.json	
}

get_ip
update_json_file
