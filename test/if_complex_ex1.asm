# if(a == b && a > 2) {
# 	c = 3;
# }

.data

bbb:		.byte 0x12

.text
.globl main
main:
	
	lb		$t2, bbb
	li		$t3, 0				# c = 0
	li		$t4, 0x12			# a = 0x12

	
	#inizio if
	
	seq 	$t0, $t4, $t2		# set $t0 a 1 se a == b, altrimenti a 0
	sgt		$t1, $t4, 2			# set $t1 a 1 se a > 2, altrimenti a 0
	and 	$t5, $t0, $t1		# $t5 = $t0 & $t1

	bne 	$t5, 1, exit		# se $t5 != 1 (la condizione è falsa), esci
	li		$t3, 3				# c = 3

exit:
	
	li $v0, 10
	syscall	

.end main

#output
# $t0	1
# $t1	1
# $t2	bbb
# $t3	c = 3
# $t4	c = 0x12
# $t5	1