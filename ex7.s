.data
	msg1:.asciiz"\nInsira o comprimento de um paralelepipedo: "
	msg2:.asciiz"\nInsira a largura de um paralelepipedo: "
	msg3:.asciiz"\nInsira a altura de um paralelepipedo: "
	msg4:.asciiz"\nO volume do seu paralelepipedoe de: "
.text
main:
	#$f2 (lg) $f1 (cm) $f3 (al) $f4 (vl)
	
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
	
	#apresentando3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	#lendo3
	
	li $v0 6
	syscall
	mov.s $f3, $f0
	

	#calculando
	
	mul.s $f4, $f1, $f2
	mul.s $f4, $f4, $f3

	
	
	#apresentando msg4
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	#apresentando resultado

	li $v0, 2
	mov.s $f12, $f4
	syscall
	