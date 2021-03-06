#!/bin/bash
#
# Filename: foldermaker.sh
# @version: 1.0
# Description: This script is for creating folder by taking folder name from user input in command line.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      21/07/2021
# @last modified date: 17/08/2021

# use read command to take input from user and store in 'folderName' variable
read -p "Type the name of the folder you would like to create: " folderName

# make new directory
mkdir "$folderName"
