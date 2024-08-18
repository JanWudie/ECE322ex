#!/bin/bash

# Filename: ex17.sh
#
# Problem: Using awk add two more columns to the table. Calculate the change in currency 
# from the table. Then calculate the percentage of the change relative to the low value.
 
cat ex16.input | awk '{
		printf $0" "
		if ( $2 ~ /^[0-9]+/ ) {
			#not gonna waste effort rounding to the exact decimal
			#couldnt get any operations working outside of print
			print  $3 - $2 "0 " (($3 - $2) / $2) * 100
		} else if ( $2 ~ /^[A-z]+/ ) {
			print "Variation VarPercent"
		} else {
			print ""
		}
	}'
