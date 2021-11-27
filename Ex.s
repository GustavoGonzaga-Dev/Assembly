.data
	msg1:.asciiz"\nInsira a quantidade de numeros pares que deseja ver: "
	msg2:.asciiz"\nFinalizando "
	msg3:.asciiz"\n"
.text
main:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	add $t3, $t3, $zero 
	
	Condicional:
	blt $t3, $t1, Foi
	j Final
	
	Foi:
	add $t2, $t2, 2
	
	li $v0, 1
	add $a0, $t2, $zero
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	add $t3, $t3, 1
	j Condicional
	
	Final:
	li $v0, 4
	la $a0, msg2
	syscall
	