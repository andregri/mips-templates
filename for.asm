# for(int i = 0; i < 20; i++) {
# 	codice;
# }

	li 		$t0, 0				# i = 0 one time initialization
	li 		$t1, 20				# carico la costante per fare il confronto

loop1:

	#	qui in mezzo c'è il codice dentro il for
	#	...
	#	

	addi	$t0, $t0, 1			# i++
	blt		$t0, $t1, loop1		# se t0 < t1 salta a loop1
	
	
###########################################################################

# for(int i = 20; i >= 1; i--) {
# 	codice;
# }

	li		$t0, 20				# i = 20 one time initialization
	li		$t1, 1				# limite del loop
	
loop2:

	#codice
	
	subu	$t0, $t0, 1			# i--
	bge		$t0, $t1, loop2		# se t0 >= t1 salta a loop2