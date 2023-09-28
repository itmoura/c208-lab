.data
	# exercicio 1
	a1: .byte 10
	a2: .byte 25
	a3: .byte 43
	a4: .byte 89
	
.text
	lb $v0, a1
	add $s1, $v0, $0
	
	lb $v0, a2
	add $s2, $v0, $0
	
	lb $v0, a3
	add $s3, $v0, $0
	
	lb $v0, a4
	add $s4, $v0, $0
	
	srl $t0, $s1, 8
	srl $t1, $s2, 8
	srl $t2, $s3, 8
	srl $t3, $s4, 8
	
	sll $t4, $s1, 4
	sll $t5, $s2, 4
	sll $t6, $s3, 4
	sll $t7, $s4, 4