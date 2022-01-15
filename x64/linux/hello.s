	section	.data
	info db "hello, world!", 10

	section	.text
	global	_start
_start:
	;; syscall id is stored in rax
	mov	rax, 1
	;; arguments are stored in: rdi, rsi, rdx, r10, r8, r9
	;; sys_write
	mov	rdi, 1
	mov	rsi, info
	mov	rdx, 14
	syscall

	;; sys_exit
	mov	rax, 60
	mov	rdi, 2
	syscall

