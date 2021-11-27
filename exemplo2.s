.data
	textosoma: .asciiz "\nA soma resulta em: "
	textosub: .asciiz "\nA subtração resulta em: "
	textomult: .asciiz "\nA multiplicação resulta em: "
	textodiv: .asciiz "\nA divisão, inteiros, resulta em: "
	textoresto: .asciiz "\nO resto da divisão, resulta em: "
.text
main:
	li $t1, 25				#Valor 25 no registrador t1
	li $t2, 18				#Valor 18 no registrador t2
	
	add $t3, $t1, $t2		#Regitrador t3 recebe a soma de t1 e t2
	sub $t4, $t1, $t2		#Regitrador t4 recebe a subtração de t1 e t2		
	mul $t5, $t1, $t2		#Regitrador t5 recebe a multiplicação de t1 e t2
	div $t6, $t1, $t2		#Regitrador t6 recebe a divisão de t2 e t1
	rem $t7, $t1, $t2		#Regitrador t7 recebe o resto da divisão de t2 e t1
	
	li $v0, 4				#Escrever caracteres
	la $a0, textosoma		#Passando para a0 (variável que vai imprimir em tela) o valor de textosoma
	syscall
	li $v0, 1				#Escrever números inteiros
	add $a0, $t3, $zero		#Escrever o conteúdo do registrador t3, fazendo uma soma do conteúdo de t3 com 0
	syscall
	
	li $v0, 4
	la $a0, textosub
	syscall
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
	li $v0, 4
	la $a0, textomult
	syscall
	li $v0, 1
	add $a0, $t5, $zero
	syscall
	
	li $v0, 4
	la $a0, textodiv
	syscall
	li $v0, 1
	add $a0, $t6, $zero
	syscall
	
	li $v0, 4
	la $a0, textoresto
	syscall
	li $v0, 1
	add $a0, $t7, $zero
	syscall
	