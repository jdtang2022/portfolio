#!/bin/bash
#
# Filename: UserAccounts.sh
# @version: 1.0
# Description: This script use 'awk' to read through the /etc/passwd file and format it into a neat table.
# Print only those line where 'Shell' field mathc the '/bin/bash' which set by using Regex.
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @creation date:      11/08/2021
# @last modified date: 12/08/2021

# Seperate field by ':', and print only 1st, 2nd, 3rd, 6th and 7th field where 'Shell' field match "/bin/bash"
# The first 'awk' command only print lines that match the Regex pattern (/bin/bash)
# The second 'awk' command format output into a neat table
awk -F: '$7 ~ /\/bin\/bash$/ {print $0}' /etc/passwd | awk 'BEGIN {

    # set ':' as field seperator
    FS=":";

    printf ("| \033[34m%-20s\033[0m | \033[34m%-6s\033[0m | \033[34m%-7s\033[0m |", "Username", "UserID", "GroupID");       # print header
    printf (" \033[34m%-33s\033[0m | \033[34m%-20s\033[0m |\n", "Home", "Shell");                                           # print header
    print("|______________________|________|_________|___________________________________|______________________|");        # print table

}

# print field 1, 3, 4, 6 and 7
{
    printf("| \033[33m%-20s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-33s\033[0m | \033[35m%-20s\033[0m |\n", 
            $1, $3, $4, $6, $7);

}

END {
    print("|______________________|________|_________|___________________________________|______________________|")         # print table

}'






# Seperate field by ':', and print only 1st, 2nd, 3rd, 6th and 7th field where 'Shell' field match "/bin/bash" Strings NOT using regex
# awk 'BEGIN {

#     # set ':' as field seperator
#     FS=":";
#     printf ("| \033[34m%-20s\033[0m | \033[34m%-6s\033[0m | \033[34m%-7s\033[0m |", "Username", "UserID", "GroupID");       # print header
#     printf (" \033[34m%-33s\033[0m | \033[34m%-20s\033[0m |\n", "Home", "Shell");                                           # print header
#     print("|______________________|________|_________|___________________________________|______________________|");        # print table
# }

# # 
# {
#     if ( $7 == "/bin/bash" ) {
#     printf("| \033[33m%-20s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-33s\033[0m | \033[35m%-20s\033[0m |\n", 
#             $1, $3, $4, $6, $7);
#     }

# }

# END {
#     print("|______________________|________|_________|___________________________________|______________________|")

# }' /etc/passwd