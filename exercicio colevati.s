.data
	msg1:.asciiz"\nInsira um numero de 1 e menor ou igual a 10000 que deseja saber se e um palindromo: "
	msg2:.asciiz"\nNumero Invalido"
	msg3:.asciiz"\nNao e palindromo"
	msg4:.asciiz"\nE palindromo. "
	msg5:.asciiz"\nFinalizando!!"
.text
main:
	
li $t9, 0
	
antes:
ble $t9,4,while
	
j Fimb
	
	
while:
#apresentando
	
li $v0, 4
la $a0, msg1
syscall

#lendo
	
li $v0, 5
syscall
	
add $t0, $v0, 0
	
blt $t0, 1, NI

	ble $t0, 9, hee
	j teste
	
	hee:
	#apresentando resultado

	li $v0, 1
	move $a0, $t0
	syscall
		
	#apresentando
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	j Fim

teste:	
bgt $t0, 10000, NI
	
j NP
	
NI:
#apresentando
	
li $v0, 4
la $a0, msg2
syscall
	
j Fim
	
NP:
	
beq $t0, 10000, NPm 
	
j TC
	
NPm:
#apresentando resultado

li $v0, 1
move $a0, $t0
syscall
	
	
#apresentando
	
li $v0, 4
la $a0, msg3
syscall
	

	
j Fim
	
TC:
	
add $t1, $t0, 0
	
#if1
ble $t0, 99, a
	
j IFB
	
a:
rem $t2, $t1, 10 
div $t3, $t1, 10
	
mul $t4, $t2, 10
add $t4, $t4, $t3
	
#ifa
beq $t4, $t0, sim
		
j NPm

sim:
		
		
#apresentando resultado

li $v0, 1
move $a0, $t4
syscall
		
#apresentando
	
li $v0, 4
la $a0, msg4
syscall
		
		
	
j Fim
	
IFB:
#if2
ble $t0, 999, bi
	 
j IFC
	 
bi:
	 
rem $t2, $t1, 10 
div $t3, $t1, 10
rem $t4, $t3, 10
div $t5, $t3, 10
	 
mul $t6, $t2, 10
add $t6, $t6, $t4
mul $t6, $t6, 10
add $t6, $t6, $t5
	 
beq $t6, $t0, simb
		
j NPm

simb:
#apresentando
	
#apresentando resultado

li $v0, 1
move $a0, $t6
syscall
		
		
li $v0, 4
la $a0, msg4
syscall
		
		
	
j Fim
		
IFC:
#if3
ble $t0, 9999, c
	
j Fim
	
c:
rem $t2, $t1, 10 
div $t3, $t1, 10
rem $t4, $t3, 10
div $t5, $t3, 10
rem $t6, $t5, 10
div $t7, $t5, 10
	 
mul $t8, $t2, 10
add $t8, $t8, $t4
mul $t8, $t8, 10
add $t8, $t8, $t6
mul $t8, $t8, 10
add $t8, $t8, $t7
	
beq $t8, $t0, simc
		
j NPm

simc:
		
#apresentando resultado

li $v0, 1
move $a0, $t8
syscall
		
#apresentando
	
li $v0, 4
la $a0, msg4
syscall
		
		
	
j Fim
	
Fim:

add $t9, $t9, 1
j antes

Fimb:
#apresentando
	
li $v0, 4
la $a0, msg5
syscall
	
	
	
	