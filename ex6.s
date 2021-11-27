.data
	msg1:.asciiz"\nInsira o valor de X: "
	msg2:.asciiz"\nInsira o valor de Y: "
	msg3:.asciiz"\nX agora e: "
	msg4:.asciiz"\nY agora e: "
.text
main:
	#$f2 (Y) $f1 (X) $f3 (C)
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	
	mov.s $f1, $f0
	
	#apresentando2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#lendo2
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	

	#calculando
	
	mov.s $f3, $f2
	mov.s $f2, $f1
	mov.s $f1, $f3
	
	
	#apresentando msg3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	#apresentando valor X

	li $v0, 2
	mov.s $f12, $f1
	syscall
	
	#apresentando msg4
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	#apresentando valor Y
	
	li $v0, 2
	mov.s $f12, $f2
	syscall

	