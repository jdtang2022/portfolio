#!/bin/bash
#
# movefile.sh
# @version 1.0
# This script is for moving file by taking file name and destination location
# from user input in command line.
#
# @author Jay <jdtang@our.ecu.edu.au>
# @date: 21/07/2021

# use read command to take input from user and store in 'folderName' variable
read -p "Enter file name you would like to move: " fileName

# use read command to take destination location and store in 'desLocation' variable
read -p "Enter destination location: " desLocation

# move file to destination location
mv "$fileName" "$desLocation"
