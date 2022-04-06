#!/bin/bash

for OS in $(cat /etc/os-release | grep PRETTY_NAME= | awk -F '"' '{print$2}' | awk -F ' ' '{print$1}')

do
	        mkdir $OS
		cd $OS
		touch info
		echo "processor info" >> info
		uname -r >> info
		sleep 3 >> info
		echo "Memory blocks" >> info
		lsblk >> info
		sleep 3 >> info
		echo "free memory" >> info
		free -m >> info
		sleep 3 >> info
		echo "info" >> info
		arch >> info
	done
