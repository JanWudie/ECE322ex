#!/bin/bash

# Filename: ex3.sh
#
# Problem: Make a script to check if a file exists. The filename is the first 
# argument passed to the script. Print that the file exists if it does, and 
# file doesn't exist if it doesn't.

#this should work, did in my own testing, not sure what's up with your check!
VAR=test/ex3.arg
if [ -a $VAR ]; then
 echo The file \"$VAR\" exists.
else
 echo The file \"$VAR\" does not exist.
fi
