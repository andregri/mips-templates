if (a == 1){
	#...1
} else if (a == 2) {
	#...2
} else if (a == 3) {
	#...3
} else {
	#...4
}

############################################################

bne		$t0, 1, else1		# se a != 1 salta a else1
#...1
j		exit
	
else1:
bne		$t0, 2, else2		# se a != 2 salta a else2
#...2
j		exit
	
else2:
bne		$t0, 3, else3		# se a != 3 salta a else
#...3
j		exit
	
else:
#...4
	
exit:
#...
