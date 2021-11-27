.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nO resultado da operação é: "
.text
main:
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5 				#Ler números inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficará, temporáriamente, no registrador v0
	add $t1, $v0, $zero		#Soma, em t1, o valor de v0 com 0. Apenas para movimentação.
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5 				#Ler números inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficará, temporáriamente, no registrador v0
	add $t2, $v0, $zero		#Soma, em t2, o valor de v0 com 0. Apenas para movimentação.
	
	mul $t3, $t1, $t2
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall