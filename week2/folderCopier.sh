#!/bin/bash
#
# Filename: folderCopier.sh
# @version: 1.0
# Description: This script is to fopy folder (if exist) to a new location.
# 				Otherwise, print an error message
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      21/07/2021
# @last modified date: 17/08/2021

# read folder name from user input, assign it to 'folderName' variable
read -p "Enter the folder name you would like to copy: " folderName

# if the name is a valid directory
if [ -d "$folderName" ]; then

	# read new folder name from user input, assign to 'newFolderName' variable
	read -p "Enter name of the destination folder: " newFolderName

	# copy it to a new location
	cp -r "$folderName" "$newFolderName"

else

	# otherwise, print error message
	echo "I could not find that folder"

fi

exit 0
