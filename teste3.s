.data
	msg1:.asciiz"\nDigite um numero inteiro:"
	msg2:.asciiz"\nPar"
	msg3:.asciiz"\nImpar"
.text
main:

	#$t0 (a), $t1 (b), $t2 (c) comentario

	li $t1, 1
	enquanto:
		li $v0, 4
		la $a0, msg1
		syscall

		li $v0, 5
		syscall
		add $t0, $v0, $zero
		
		rem $t2, $t0, 2

		beq $t2, 0, se
			li $v0, 4
			la $a0, msg3
			syscall
			j fimse

		se:
			li $v0, 4
			la $a0, msg2
			syscall
		
		fimse:

		add $t1, $t1, 1

	ble $t1, 3, enquanto