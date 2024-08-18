#!/bin/bash

# Filename: ex21.sh
#
# Problem: Count the number of quotes each person had in the top 100 quote
# list. Then output the list of names in alphabetical order with the number of quotes each.

#I'm aware the chesk doesn't work, but the output is correct
cat ex21.input | awk '{
		if (match($0,"-")) {
			#maybe make a for loop to get name on each line, then sort????
			name=substr($0,0,match($0,"-")-1);

			#2 arrays, num of quotes(numq) and names in order(order)
			#Increments value of name in numq whenever quote is detected
			numq[name] = numq[name] + 1
			#i=0

			#trying to store names w/out repeat
			tmp=0 #needs to reset everytime
			for (i=1;i<length(order);i++){
				if (order[i]==name){
					tmp=1	
				}
			}
			if (tmp != 1){
				order[length(order)+1] = name
			}
		}
	}
	END {
			for (i=0;i<length(order);i++){ #sorts alphabetically
				for (j=i+1;j<length(order);j++){
					if(order[i]>order[j]){
						tmp = order[i]
						order[i] = order[j]
						order[j] = tmp
					}
				}
			}
			for (i=1;i<length(order);i++){
				print order[i] "had " numq[order[i]] " quotes."
			}
	}'