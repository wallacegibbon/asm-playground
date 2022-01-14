	.balign	4
	.data
hello:
	.asciz "hello, this is an ARM assembly language program.\n"

	.balign	4
	.text
	.global	main
main:
	// puts in c library will be called, so lr should be stored
	push	{lr}
	ldr	r0, addr_of_hello
	bl	puts
	pop	{lr}
	bx	lr

addr_of_hello:
	.word	hello

