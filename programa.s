
.data
mensagem: .asciiz "Digite um numero\n"     #Cria uma variável string
numero: .word 1		                   #Cria uma variável int
resultado: .word 1                         #Cria uma variável int
	
	.text
main:	li $v0, 4
	la $a0, mensagem            #Exibe a mensagem na tela
	syscall
	
	li $v0, 5	            #Lê um inteiro  	
        syscall

	sw $v0, numero              #Salva na variavel o que o usuário digitou
	add $t0, $v0, $v0           #Coloca no temporário o dobro do valor
	sw $t0, resultado           #Salva na variável resultado o valor do temporário

	li $v0, 1
	move $a0, $t0               #Imprime na tela o resultado
	syscall

	jr $ra
