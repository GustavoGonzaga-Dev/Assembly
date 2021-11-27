.data
	msg1: .asciiz "\nDigite um número inteiro: "
	msgigual: .asciiz "\nSão iguais"
	msgmaior: .asciiz "\nO primeiro é maior que o segundo"
	msgmenor: .asciiz "\nO segundo é maior que o primeiro"
.text
main:
	# Condicional - Não esquecer que é sequencial e não estruturado
	
	li $v0, 4				#Escrever caracteres
	la $a0, msg1			#Passando para a0 (variável que vai imprimir em tela) o valor de msg1
	syscall
	
	li $v0, 5 				#Ler números inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficará, temporáriamente, no registrador v0
	add $t1, $v0, $zero		#Soma, em t1, o valor de v0 com 0. Apenas para movimentação.

	li $v0, 4				#Escrever caracteres
	la $a0, msg1			#Passando para a0 (variável que vai imprimir em tela) o valor de msg1
	syscall
	
	li $v0, 5 				#Ler números inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficará, temporáriamente, no registrador v0
	add $t2, $v0, $zero		#Soma, em t2, o valor de v0 com 0. Apenas para movimentação.

	beq $t1, $t2, igual		#Se t1 = t2 - Salte para igual
	bgt $t1, $t2, maior		#Se t1 > t2 - Salte para maior
	blt $t1, $t2, menor		#Se t1 < t2 - Salte para menor

	igual:
	li $v0, 4
	la $a0, msgigual
	syscall
	j fim					#Salta para fim

	maior:
	li $v0, 4
	la $a0, msgmaior
	syscall
	j fim					#Salta para fim
	
	menor:
	li $v0, 4
	la $a0, msgmenor
	syscall
	j fim					#Salta para fim
	
	fim: