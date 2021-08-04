#!/bin/bash
#
# IpInfo.sh
# @version 1.0
# Print IP addresses of the computer by using 'sed'
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 04/08/2021

inet_info=$(ifconfig)

# assign to variable
addresses=$(echo "$inet_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
    }')

echo -e "The IP Addresses on this computer are:\n$addresses"