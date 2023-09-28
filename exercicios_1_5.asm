.data
	a: .byte 1
	b: .byte 2
	c: .byte 3
	
.text
	lb $v0, a
	add $s1, $v0, $0
	
	lb $v0, b
	add $s2, $v0, $0
	
	lb $v0, c
	add $s3, $v0, $0
	
# ------------------------------------	
#	1) A == B
#	beq $s1, $s2, if
#		add $s3, $s1, $s2
#		sub $s1, $s2, $s3
#		j exit
	
#	if: 
#		add $s2, $s1, $s3
#		sub $s3, $s2, $s3
#		j exit
# ------------------------------------	
		
# ------------------------------------	
#	2) A != B
#	bne $s1, $s2, if
#		add $s3, $s1, $s2
#		sub $s1, $s2, $s3
#		j exit
#	
#	if: 
#		add $s2, $s1, $s3
#		sub $s3, $s2, $s3
#		j exit
# ------------------------------------	

# ------------------------------------	
#	3) A > B
#	bgt $s1, $s2, if
#		sub $s3, $s1, $s2
#		add $s1, $s2, $s3
#		j exit
#	
#	if: 
#		sub $s2, $s1, $s3
#		add $s3, $s2, $s3
#		j exit
# ------------------------------------	

# ------------------------------------	
#	4) A < B
#	blt $s1, $s2, if
#		add $s3, $s1, $s2
#		sub $s1, $s2, $s3
#		j exit
#	
#	if: 
#		add $s2, $s1, $s3
#		sub $s3, $s2, $s3
#		j exit
# ------------------------------------	

# ------------------------------------	
#	5) WHILE
	addi $t1, $0, 10 # i = 10
	addi $t2, $0, 0 # count = 0
	while: bgt $t1, 0, loop
		j exitLoop
	
	loop:
		addi $t2, $t2, 5
		subi $t1, $t1, 2
		j while
# ------------------------------------	
		
		
	exit:
		sb $s1, a
		sb $s2, b
		sb $s3, c
		
		li $v0, 1
		lb $a0, a
		syscall
		
		li $v0, 1
		lb $a0, b
		syscall
		
		li $v0, 1
		lb $a0, c
		syscall
	
	exitLoop:
		