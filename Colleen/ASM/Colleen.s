section .data
	quine db "section .data%2$c	quine db %3$c%1$s%3$c, 0%2$c%2$cglobal main%2$cextern printf%2$csection .text%2$c;	to be or not to be...%2$cmain:%2$c;	that is the question%2$c	push rbp%2$c	mov rbp, rsp%2$c	mov rdi, quine%2$c	mov rsi, quine%2$c	mov rdx, 10%2$c	mov rcx, 34%2$c	call printf%2$c	call func%2$c	mov rsp, rbp%2$c	pop rbp%2$c	mov rax, 60%2$c	xor rdi, rdi%2$c	syscall%2$cfunc:%2$c	ret%2$c", 0

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
	call func
	mov rsp, rbp
	pop rbp
	mov rax, 60
	xor rdi, rdi
	syscall
func:
	ret
