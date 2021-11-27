.data
	msg1:.asciiz"\nInsira um numero natural: "
	msg2:.asciiz"\nInsira um numero natural, maior que o numero inserido anteriormente: "
	msg3:.asciiz"\nNao e primo"
	msg4:.asciiz"\nInsira os numeros novamente. "
	msg5:.asciiz"\nFinalizando operacao."
.text
main:
	#$t0 (N) $t1 (M) $t2 (ctd) $t3 (cto) $t4 (p) $t5 (h) $t6 (contador)
	
	li $t2, 0
	
	#Do
	Do:
	
	
	#apresentando
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo
	
	li $v0, 5
	syscall
	
	add $t0, $v0, 0
	
	#apresentando2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	#lendo2
	
	li $v0, 5
	syscall
	
	add $t1, $v0, 0
	
	#IF
	
	bgt $t1, $t0, IF
	j ELSE #pulando para o else
	
	IF:
		
		add $t3, $t0, $zero
		
		#While
		While:
		blt $t3, $t1, A
		
		j Wend
		
		A:
		add $t3, $t3, 1
		li $t4, 2 #li 
			
			#while2
			While2:
			
			blt $t4, $t3 B
			
			j Wend2
			
			B:
			rem $t5, $t3, $t4
			
				#If2
				beq $t5, $zero, If2
				
				j EndIf2
				
				If2:
				
				
				#apresentando msg3
	
				li $v0, 4
				la $a0, msg3
				syscall
				
				#apresentando resultado

				li $v0, 1
				move $a0, $t3
				syscall
				
				
				
				add $t4, $t1, $zero
				
				add $t6, $t6, 1
				
				EndIf2:
				
				
				add $t4, $t4, 1
				
				j While2
				
				
			Wend2:
			
		j While
		
		Wend:
		
		
	j EndIf #pulando para EndIf
	
	ELSE:
	
	add $t2, $t2, 1
	
	EndIf:
	
		#apresentando msg4
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	LoopWhile:
	ble $t2, 2, Do
	
	
	#apresentando msg5
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	#fim
	