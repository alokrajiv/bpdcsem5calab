		.data
list:	.word	1, 2, 3, 4, 5, 6, 7, 8, 9, 10
size:	.word	10

		.text
		.globl main
main:
		lw	$t3,size
		la	$t1,list
		li	$t2,0
l1:		beq $t2,$t3,l2
		lw	$a0,($t1)
		li	$v0,1
		syscall
		addi $t2,$t2,1
		addi $t1,$t1,4
		j	l1
l2:		li	$v0,10
		syscall
		