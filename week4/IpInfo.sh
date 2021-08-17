#!/bin/bash
#
# Filename: IpInfo.sh
# @version: 1.0
# Description: Print IP addresses of the computer by using 'sed'
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      04/08/2021
# @last modified date: 17/08/2021

# get network information from 'ifconfig' command
inet_info=$(ifconfig)

# assign to variable
# '-n' flag is used to not print lines that have not been processed (match '/inet /' pattern)
# substitute 'inet' to 'IP Address', 'netmask' to 'Subnet Mask' and 'broadcast' to 'Broadcast Address'
# p command to print only lines that have been processed by 'sed'
addresses=$(echo "$inet_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
    }')

echo -e "The IP Addresses on this computer are:\n$addresses"