.data
	msg1:.asciiz"\nInsira o valor da base do seu triangulo: "
	msg2:.asciiz"\nInsira o valor da altura do seu triangulo "
	msg3:.asciiz"\nA area do seu triangulo e de: "
.text
main:
	#$f2 (base) $f1 (area) $f3 (altura)
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	
	#apresentando msg2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	
	mov.s $f3, $f0

	#calculando
	
	li.s $f4, 2.0
	
	mul.s $f1, $f2, $f3
	div.s $f1, $f1, $f4
	
	#apresentando msg3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	#apresentando reajuste

	li $v0, 2
	mov.s $f12, $f1
	syscall
	

	