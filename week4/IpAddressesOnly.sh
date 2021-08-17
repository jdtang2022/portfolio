#!/bin/bash
#
# Filename: IpAddressOnly.sh
# @version: 1.0
# Description: It runs the 'IpInfo.sh' script and uses 'sed' to display only the lines with 'IP Address' on them
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      04/08/2021
# @last modified date: 17/08/2021

# call and run 'IpInofh.sh' and assign to variable 'ip_info'
ip_info=$(./IpInfo.sh)

# print only line that matches pattern 'IP'
echo "$ip_info" | sed -n '/IP Address/p'