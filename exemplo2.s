.data
	textosoma: .asciiz "\nA soma resulta em: "
	textosub: .asciiz "\nA subtra��o resulta em: "
	textomult: .asciiz "\nA multiplica��o resulta em: "
	textodiv: .asciiz "\nA divis�o, inteiros, resulta em: "
	textoresto: .asciiz "\nO resto da divis�o, resulta em: "
.text
main:
	li $t1, 25				#Valor 25 no registrador t1
	li $t2, 18				#Valor 18 no registrador t2
	
	add $t3, $t1, $t2		#Regitrador t3 recebe a soma de t1 e t2
	sub $t4, $t1, $t2		#Regitrador t4 recebe a subtra��o de t1 e t2		
	mul $t5, $t1, $t2		#Regitrador t5 recebe a multiplica��o de t1 e t2
	div $t6, $t1, $t2		#Regitrador t6 recebe a divis�o de t2 e t1
	rem $t7, $t1, $t2		#Regitrador t7 recebe o resto da divis�o de t2 e t1
	
	li $v0, 4				#Escrever caracteres
	la $a0, textosoma		#Passando para a0 (vari�vel que vai imprimir em tela) o valor de textosoma
	syscall
	li $v0, 1				#Escrever n�meros inteiros
	add $a0, $t3, $zero		#Escrever o conte�do do registrador t3, fazendo uma soma do conte�do de t3 com 0
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
	