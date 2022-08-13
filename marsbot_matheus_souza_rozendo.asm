# criado por:
# Matheus Souza Rozendo


# velocidade de execução: 30 px/seg
.data
	instructions: .half 180,13,0,90,6,0,90,8,1,0,8,1,270,8,1,180,8,1,45,1,0,45,1,1,45,1,0,45,1,1,90,1,1,90,1,0,90,1,1,90,1,0,90,1,1,90,1,0,90,1,1,90,1,0,0,8,1,270,8,1,180,1,1,180,1,0,180,1,1,180,1,0,180,1,1,180,1,0,180,1,1,180,1,1,90,8,0,225,4,1,0,8,0,45,4,1,270,8,0,225,4,1,270,6,0,1000
.text
	b PROC_main
#-----------------------------------------------------------------------------
	#função que move o robô
	# void mover(angulo,tempo,pintar)
	#parâmetros:
		#a1 = angulo
		#a2 = tempo
		#a3 = pintar ou não pintar
	PROC_mover:
		#salvando os registradores na pilha de execução
		addi $sp,$sp,-16
		sw $s1,0($sp)
		sw $s2,4($sp)
		sw $s3,8($sp)
		sw $s4,12($sp)
		#movendo os endereços de controle do robô para os registradores
		li $s1,0xFFFF8010 #angulo
		li $s2,0xFFFF8020 #pintar
		li $s3,0xFFFF8050 #ligar
		#salvando o parâmetro de ângulo, no endereço de controle do robô
		sw $a1,0($s1)
		#salvando o parâmetro de pintar, no endereço de controle do robô
		sw $a3,0($s2)
		#configurando o sleep com o tempo passado
		mul $a0,$a2,1000
		li $v0,32
		#ligando o robô e aguardando o tempo
		li $s4,1
		sw $s4,0($s3)
		syscall
		#desligando o robô
		li $s4,0
		sw $s4,0($s3)
		li $a3,0
		sw $a3,0($s2)
		
		#carrega os valores de todos os registradores usados
		lw $s1,0($sp)
		lw $s2,4($sp)
		lw $s3,8($sp)
		lw $s4,12($sp)
		addi $sp,$sp,16
		jr $ra
#--------------------------------------------------------------------------------------------	

	PROC_main:
		la $s0,instructions
		lh $a1,0($s0)
		loop:
			addi $s0,$s0,2
			lh $a2,0($s0)
			addi $s0,$s0,2
			lh $a3,0($s0)
			jal PROC_mover
			addi $s0,$s0,2
			lh $a1,0($s0)	
			bne $a1,1000,loop
		
			
		
			
					
		
		
		
		
		
		
		
	
	
