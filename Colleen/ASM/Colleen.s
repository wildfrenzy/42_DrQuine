section .data
	quine db "section .data%2$c	quine db %3$c%1$s%3$c%2$c%2$cglobal main%2$cextern printf%2$csection .text%2$c;	to be or not to be...%2$cmain:%2$c;	that is the question%2$c	push rbp%2$c	mov rbp, rsp%2$c	mov rdi, quine%2$c	mov rsi, quine%2$c	mov rdx, 10%2$c	mov rcx, 34%2$c	call printf%2$c	mov rsp, rbp%2$c	pop rbp%2$cthe_end:%2$c	mov rax, 60%2$c	xor rdi, rdi%2$c	syscall%2$c"

global main
extern printf
section .text
;	to be or not to be...
main:
;	that is the question
	push rbp
	mov rbp, rsp
	mov rdi, quine
	mov rsi, quine
	mov rdx, 10
	mov rcx, 34
	call printf
	mov rsp, rbp
	pop rbp
the_end:
	mov rax, 60
	xor rdi, rdi
	syscall