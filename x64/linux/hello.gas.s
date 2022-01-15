	// this program is not fully functioning yet.
	// the `sys_write` is not working, but `sys_exit` works.
	// this may be caused by the link phase, the "hello, world!\n" string
	// is not initialized.
	.balign	8
	.text
	.globl	_start
_start:
	// syscall id is stored in rax
	mov	$1, %rax
	// arguments are stored in: rdi, rsi, rdx, r10, r8, r9
	// sys_write
	mov	$1, %rdi
	mov	info(%rip), %rsi
	mov	$14, %rdx
	syscall

	// sys_exit
	mov	$60, %rax
	mov	$2, %rdi
	syscall
	.section	.rodata
info:
	.string	"hello, world!\n"

