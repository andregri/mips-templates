.data

wooo:		.word 0x00000012

.text
.globl main
main:
	
	li		$t2, 0				# a = 0
	li		$t3, 0				# b = 0
	
#########################################################################
# for 1
# for(int i = 0; i < 5; i++) {
#	b++;
# }
#########################################################################
	li 		$t0, 0				# i = 0
	li 		$t1, 5				# carico la costante per fare il confronto
loop1:
	# qui c'è il codice dentro il for
	addi	$t2, $t2, 1			# b++

	addi	$t0, $t0, 1			# i++
	blt		$t0, $t1, loop1		# se (t0 < t1) salta a loop1

#########################################################################
# for 2
# for(int i = 7; i >= 1; i++) {
#	c++;
# }
#########################################################################
	
	li		$t0, 7				# i = 7 one time initialization
	li		$t1, 1				# limite del loop
loop2:
	# codice dentro il for
	addi	$t3, $t3, 1			# c++
	
	subu	$t0, $t0, 1			# i--
	bge		$t0, $t1, loop2		# se (t0 >= t1) salta a loop2
	
	
	li $v0, 10
	syscall	

.end main

# output
# $t2	b 5
# $t3	c 7