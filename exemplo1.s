.data
	texto1: .asciiz "\nPrimeiro texto impresso"
.text
main:
	li $s1, 15		#Coloca no registrador de inteiros, s1, o valor 15.
	
	li $v0, 4		#Prepara a escrita de String
	la $a0, texto1	#Escreve o texto
	syscall			#chamada de sistema para a escrita
	
	li.s $f1, 2.4	#Coloca no registrador de reais, s1, o valor 15.