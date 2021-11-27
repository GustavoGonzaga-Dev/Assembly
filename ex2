.data
	msg1:.asciiz"\nInsira o valor do seu salario: "
	msg2:.asciiz"\nSeu reajuste de 15% baseado no seu salario, é de: R$"
	msg3:.asciiz"\nSeu salario ja com o reajuste é de: R$"
.text
main:
	#$f2 (salar) $f1 (final) $f3 (reaj)
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 6
	syscall
	mov.s $f2, $f0

	#calculando
	li.s $f4, 15.0
	li.s $f5, 100.0
	
	mul.s $f3, $f2, $f4
	div.s $f3, $f3, $f5
	add.s $f1, $f3, $f2
	
	#apresentando msg2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#apresentando reajuste

	li $v0, 2
	mov.s $f12, $f3
	syscall
	
	#apresentando msg3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	#apresentando final
	
	li $v0, 2
	mov.s $f12, $f1
	syscall


	