.data

w			.word 0x00000000
h:			.half 0x0000
b:	 		.byte 0x00

.text
.globl main
main:
	lw $a0, arg1		# passaggio argomento per copia
	la $a1, arg2		# passaggio argomento per puntatore
	lw $a2, arg3 
	lw $a3, arg4  
	
	#load arg5
	lw $t0, arg5		# lb, lh, lw
	sw $t0,($sp)		# sempre sw
	
	#load arg6
	subu $sp, $sp, 4
	lw $t0, arg6
	sw $t0,($sp)
	
	#load arg7
	subu $sp, $sp, 4
	lw $t0, arg7
	sw $t0,($sp)	
	
	jal quantization

	li $v0, 10
	syscall	

.end main

## ----------------------------------------------------
## Funzione
## ----------------------------------------------------

.globl quantization
.ent quantization 
quantization:

	subu 	$sp,$sp,56
	sw 		$a0,($sp)
	sw 		$a1,4($sp)
	sw 		$a2,8($sp)
	sw 		$a3,12($sp)
	sw 		$s0,16($sp)
	sw 		$s1,20($sp)
	sw 		$s2,24($sp)
	sw 		$s3,28($sp)
	sw 		$s4,32($sp)
	sw 		$s5,36($sp)
	sw 		$s6,40($sp)
	sw 		$s7,44($sp)
	sw 		$fp,48($sp)
	sw 		$ra,52($sp)
	
	addu 	$fp,$sp,56
	
	move	$s0,$a0			# memorizzazione degli argomenti nei registri temporanei
	move	$s1,$a1
	move	$s2,$a2
	move	$s3,$a3	
	
	lw		$s4, 8($fp) 	# recupera arg5 dalla stack. sempre lw
	lw		$s5, 4($fp)		# recupera arg6
	lw		$s6, ($fp)		# recupera arg7
	
	
	#qui in mezzo ci va il codice della funzione
	#...
	#

	
	lw 		$a0,($sp)		# inizia il recupero dati dallo stack
	lw 		$a1,4($sp)
	lw 		$a2,8($sp)
	lw 		$a3,12($sp)
	lw 		$s0,16($sp)
	lw 		$s1,20($sp)
	lw 		$s2,24($sp)
	lw 		$s3,28($sp)
	lw 		$s4,32($sp)
	lw 		$s5,36($sp)
	lw 		$s6,40($sp)
	lw 		$s7,44($sp)
	lw 		$fp,48($sp)
	lw 		$ra,52($sp)
	addu 	$sp,56
	
	jr 		$ra			# ritorno al main
	
.end quantization