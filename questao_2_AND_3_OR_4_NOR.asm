.text
	addi $s0, $0, 324
	addi $s1, $0, 100
	addi $s2, $0, 2018
	addi $s3, $0, 1970
	addi $s4, $0, 33
	addi $s5, $0, 66
	
	# questao 2
	and $t0, $s0, $s1
	and $t1, $s2, $s3
	and $t2, $s4, $s5
	
	# questao 3
	ori $t3, $s0, 100
	ori $t4, $s2, 1970
	ori $t5, $s4, 66
	
	# questao 4
	nor $t6, $s0, $s1
	nor $t7, $s2, $s3
	nor $t8, $s4, $s5 