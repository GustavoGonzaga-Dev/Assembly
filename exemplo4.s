.data
	msg1: .asciiz "\nDigite um n�mero inteiro: "
	msgigual: .asciiz "\nS�o iguais"
	msgmaior: .asciiz "\nO primeiro � maior que o segundo"
	msgmenor: .asciiz "\nO segundo � maior que o primeiro"
.text
main:
	# Condicional - N�o esquecer que � sequencial e n�o estruturado
	
	li $v0, 4				#Escrever caracteres
	la $a0, msg1			#Passando para a0 (vari�vel que vai imprimir em tela) o valor de msg1
	syscall
	
	li $v0, 5 				#Ler n�meros inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficar�, tempor�riamente, no registrador v0
	add $t1, $v0, $zero		#Soma, em t1, o valor de v0 com 0. Apenas para movimenta��o.

	li $v0, 4				#Escrever caracteres
	la $a0, msg1			#Passando para a0 (vari�vel que vai imprimir em tela) o valor de msg1
	syscall
	
	li $v0, 5 				#Ler n�meros inteiros
	syscall					#Chamada do sistema para a leitura, do valor que ficar�, tempor�riamente, no registrador v0
	add $t2, $v0, $zero		#Soma, em t2, o valor de v0 com 0. Apenas para movimenta��o.

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