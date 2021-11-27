.data
	msg1: .asciiz "\nDigite um número real : "
	msgsoma: .asciiz "\nSoma = "
	msgsub: .asciiz "\nSubtração = "
	msgmulti: .asciiz "\nMultiplicação = "
	msgdiv: .asciiz "\nDivisão = "
	quebralinha: .asciiz "\n"
.text
main:
	#Ponto Flutuante
	li.s $f1, 4.4			#Coloca no registrador f1 o valor 4.4
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 6				#Leitura de Ponto Flutuante
	syscall					#Chamada de Sistema. Apesar de se fazer em v0, por ser Ponto flutuante, o valor lido é automaticamente movido para f0
	mov.s $f2, $f0			#Mudança de f0 (Valor que foi lido) para f2
	
	li $t1, 0				#Coloca no registrador t1, o valor inteiro 1
	
	enquanto:
	
	blt $t1, 1, fim
	beq $t1, 1, soma
	beq $t1, 2, subtracao
	beq $t1, 3, multi
	beq $t1, 4, divisao
	
	soma:
	add.s $f3, $f1, $f2
	li $v0, 4
	la $a0, msgsoma
	syscall
	li $v0, 2				#Escrita de ponto flutuante
	mov.s $f12, $f3			#O dado escrito deve ser movido para f12 (Registrador responsável pela esrita de ponto flutuante)
	syscall
	j fim
	
	subtracao:
	sub.s $f3, $f2, $f1
	li $v0, 4
	la $a0, msgsub
	syscall
	li $v0, 2				#Escrita de ponto flutuante
	mov.s $f12, $f3			#O dado escrito deve ser movido para f12 (Registrador responsável pela esrita de ponto flutuante)
	syscall
	j fim
	
	multi:
	mul.s $f3, $f1, $f2
	li $v0, 4
	la $a0, msgmulti
	syscall
	li $v0, 2				#Escrita de ponto flutuante
	mov.s $f12, $f3			#O dado escrito deve ser movido para f12 (Registrador responsável pela esrita de ponto flutuante)
	syscall
	j fim
	
	divisao:
	div.s $f3, $f2, $f1
	li $v0, 4
	la $a0, msgdiv
	syscall
	li $v0, 2				#Escrita de ponto flutuante
	mov.s $f12, $f3			#O dado escrito deve ser movido para f12 (Registrador responsável pela esrita de ponto flutuante)
	syscall
	j fim
	
	fim:
	add $t1, $t1, 1
	ble $t1, 4, enquanto
	

	li $v0, 4
	la $a0, quebralinha
	syscall
	
	mtc1 $t1, $f5			#Move o inteiro que está em t1 para o registrador de ponto flutuante f5
	cvt.s.w $f5, $f5		#Converte o valor de f5 para ponto flutuante simples
	
	add.s $f4, $f2, $f5
	li $v0, 2				#Escrita de ponto flutuante
	mov.s $f12, $f4			#O dado escrito deve ser movido para f12 (Registrador responsável pela esrita de ponto flutuante)
	syscall
	
	