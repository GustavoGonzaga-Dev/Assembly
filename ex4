.data
	msg1:.asciiz"\nInsira o valor da temperatura em graus celcios: "
	msg2:.asciiz"\nA temperatura inserida em celcios, convertida para fahrenheit e de: "
.text
main:
	#$f2 (cel) $f1 (fah)
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	

	#calculando
	
	li.s $f4, 9.0
	li.s $f5, 160.0
	li.s $f6, 5.0
	
	mul.s $f1, $f2, $f4
	add.s $f1, $f1, $f5
	div.s $f1, $f1, $f6
	
	#apresentando msg2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#apresentando reajuste

	li $v0, 2
	mov.s $f12, $f1
	syscall
	

	