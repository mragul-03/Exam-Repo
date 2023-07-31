#!/bin/bash

update_loggroup_name(){
	sed -i 's/"log_group_name": ""/"log_group_name": "devops-shell-script"/' cloudwatch.json
}

update_loggroup_name
