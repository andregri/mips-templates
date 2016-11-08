if(a == b && a > 2) {
	codice....
}

########################################################

seq 	$t0, a, b		# set $t0 a 1 se a == b, altrimenti a 0
sgt	$t1, a, 2		# set $t1 a 1 se a > 2, altrimenti a 0
and 	$t2, $t0, $t1		# $t2 = $t0 & $t1

bne 	$t2, 1, exit		# se $t2 != 1 (la condizione è falsa), esci
#codice...

exit:
