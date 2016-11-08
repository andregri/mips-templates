# if(t0 == wooo) {
# 	b = 3;
# }
# c = 4

.data

wooo:		.byte 0x12

.text
.globl main
main:
	
	lb		$t1, wooo			# a = wooo
	li		$t2, 0				# b = 0
	li		$t3, 0				# c = 0

	
	#inizio if
	
	bne	$t1, 0x12, exit1		# se t1 != 0x12 salta a exit1	
	li	$t2, 3					# b = 3
	
exit1:
	li	$t3, 4					# c = 4
	
	
	li $v0, 10
	syscall	

.end main

#output
# $t1	a = 0x12
# $t2	b = 3
# $t3	c = 4