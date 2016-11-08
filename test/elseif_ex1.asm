# if (a == 1){
#	t3 = 11;
# } else if (a == 1) {
#	t3 = 12;
# } else if (a == 1) {
#	t3 = 13;
# } else {
#	t3 = 14;
# }
#
# t4 = 15;


.data

wooo:		.half 0x0012

.text
.globl main
main:
	
	li 		$t0, 2				# a = 2;
	li		$t3, 0				# b = 0;
	li		$t4, 0				# c = 0;
	
	
	#inizio elseif
	
	bne		$t0, 1, else1		# se a != 1 salta a else1
	li		$t3, 11				# b = 11;
	j		exit
	
else1:
	bne		$t0, 2, else2		# se a != 2 salta a else2
	li		$t3, 12				# b = 12;
	j		exit
	
else2:
	bne		$t0, 3, else		# se a != 3 salta a else
	li		$t3, 13				# b = 13;
	j		exit
	
else:
	li		$t3, 14				# b = 14;
	
exit:
	li		$t4, 15				# c = 15;
	
	li $v0, 10
	syscall	

.end main

# output
# $t0	a = 2
# $t3	b = 12
# $t4	c = 15