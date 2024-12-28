	.file	"main.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Befor Swapping\0"
.LC1:
	.ascii "X value : %i\12\0"
.LC2:
	.ascii "Y value : %i\12\0"
.LC3:
	.ascii "X + Y value: %i\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$10, -4(%rbp)
	movl	$20, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	call	puts
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$10, %ecx
	call	putchar
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	swapping
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "After Swapping\0"
	.text
	.globl	swapping
	.def	swapping;	.scl	2;	.type	32;	.endef
	.seh_proc	swapping
swapping:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	24(%rbp), %eax
	movl	%eax, 16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, 24(%rbp)
	leaq	.LC4(%rip), %rcx
	call	puts
	movl	16(%rbp), %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
