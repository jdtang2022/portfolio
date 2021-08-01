#!/bin/bash
# fruitLoop.sh
# @version 1.0
# Print all values from the fruits array
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 30/07.2021

# assign fruits array
fruits=(Apple Mango Strawberry Orange Banana)

# for every value in the fruits array
for i in "${fruits[@]}"

do
    # print all value in fruits array
    echo "FRUIT: $i"

done