#!/bin/bash


<< readme

this is a script for backup with 5 day rotaion 


Useage: ./backup.sh <path to your source> <path to backup folder > 

readme



function display_usage() {

	echo "Useage: ./backup.sh <path to your source> <path to backup folder >" 
 
}

if [[ $# -eq 0 ]]; then 
	display_usage 

fi 

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S') 
backup_dir=$2

function  create_backup() {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}"

	if [[ $? -eq 0 ]]; then 

      echo "backup generated  successfully for ${timestamp}"
	 
	fi 

} 

create_backup


