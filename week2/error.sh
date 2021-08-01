#!/bin/bash
#
# error.sh
# @version 1.0
# Take secret code from user' input
#   *If correct, print correct message, set boolean to true then provide access to 'secret menu'
#   *If not, print invalid message, set boolean to false
#
# @author: Jay <jdtang@our.ecu.edu.au>
# @date: 27/07/2021

# Assign secret text   
secret='shhh' #Don't tell anyone! 

# Take secret text from user's input
read -s -p "what's the secret code?" 
      
# If the user types in the correct secret, tell them they got it right!    
if [ "$secret" = $REPLY ]; then 
      
    echo "You got it right!" 
      
    correct=true 
      
else     

    echo "You got it wrong :(" 
      
    correct=false 
      
fi 
      
echo            # new line

# Case statement to process user's choice
case $correct in 

true) 
      
    echo "you have unlocked the secret menu!" 
      
    #TODO: add a secret menu for people in the know. 
      
    ;; 
      
*) 
      
    echo "Go Away!" #people who get it wrong need to be told to go away! 
      
    ;; 
      
esac 
     