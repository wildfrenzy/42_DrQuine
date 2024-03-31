; O_WRONLY | O_CREAT | O_TRUNC
%define O_FLAGS 0x241
%define NEWLINE 10
%macro myquine 0
section .text
global main
extern dprintf
main:
	push	rbp
	mov		rbp, rsp

	mov		rax, 2
	mov		rdi, file
	mov		rsi, O_FLAGS
	mov		rdx, 644o
	syscall

	mov		rdi, rax
	mov		rsi, quine
	mov		rdx, quine
	mov		rcx, NEWLINE
	mov		r8, 34
	call	dprintf wrt ..plt

	mov		rsp, rbp
	pop		rbp
	ret
section .data
	file  db "Grace_kid.s", 0
	quine db "; O_WRONLY | O_CREAT | O_TRUNC%2$c%%define O_FLAGS 0x241%2$c%%define NEWLINE 10%2$c%%macro myquine 0%2$csection .text%2$cglobal main%2$cextern dprintf%2$cmain:%2$c	push	rbp%2$c	mov		rbp, rsp%2$c%2$c	mov		rax, 2%2$c	mov		rdi, file%2$c	mov		rsi, O_FLAGS%2$c	mov		rdx, 644o%2$c	syscall%2$c%2$c	mov		rdi, rax%2$c	mov		rsi, quine%2$c	mov		rdx, quine%2$c	mov		rcx, NEWLINE%2$c	mov		r8, 34%2$c	call	dprintf wrt ..plt%2$c%2$c	mov		rsp, rbp%2$c	pop		rbp%2$c	ret%2$csection .data%2$c	file  db %3$cGrace_kid.s%3$c, 0%2$c	quine db %3$c%1$s%3$c, 0%2$c%%endmacro%2$cmyquine%2$c", 0
%endmacro
myquine
