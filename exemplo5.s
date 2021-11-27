.data
	msg1: .asciiz "\nDigite um número inteiro : "
	quebralinha: .asciiz "\n"
.text
main:
	#Estrutura de laço
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $t7, 0
	
	enquanto:
	mul $t2, $t1, $t7
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	li $v0, 4
	la $a0, quebralinha
	syscall
	
	add $t7, $t7, 1
	
	ble $t7, 10, enquanto
	
	
	
	
	