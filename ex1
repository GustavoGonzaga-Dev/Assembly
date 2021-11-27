.data
	msg1:.asciiz"\nInsira o valor do lado do quadrado que deseja saber a area: "
	msg2:.asciiz"\nSua area e: "
.text
main:
	#$f2 (lado) $f1 (area)
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	mov.s $f2, $f0

	#calculando
	
	mul.s $f1, $f2, $f2
	
	#apresentando msg2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#apresentando resultado

	li $v0, 2
	mov.s $f12, $f1
	syscall
	


	