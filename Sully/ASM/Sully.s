; O_WRONLY | O_CREAT | O_TRUNC
%define O_FLAGS 0x241

section .text
	global main
	default rel
	extern dprintf
	extern asprintf
	extern free
	extern system

main:
	push	rbp
	mov		rbp, rsp

	lea		rdi, [rel i]
%ifdef INSULLY
	dec		dword [rdi]
%endif
	cmp		dword [rdi], 0
	jl		return

	lea		rdi, [rel buff]
	lea		rsi, [rel file]
	lea		rdx, [rel i]
	mov		rdx, [rdx]
	call	asprintf wrt ..plt

	mov		rax, 2
	mov		rdi, [rel buff]
	mov		rsi, O_FLAGS
	mov		rdx, 644o
	syscall

	push	rax
	mov		rdi, [rel buff]
	call	free wrt ..plt
	pop		rax

	mov		rdi, rax
	lea		rsi, [rel quine]
	lea		rdx, [rel quine]
	mov		rcx, 10
	mov		r8, 34
	lea		r9, [rel i]
	mov		r9, [r9]
	call	dprintf wrt ..plt

	lea		rdi, [rel buff]
	lea		rsi, [rel compile]
	lea		rdx, [rel i]
	mov		rdx, [rdx]
	call	asprintf wrt ..plt

	mov		rdi, [rel buff]
	call	system wrt ..plt

	mov		rdi, [rel buff]
	call	free wrt ..plt

return:
	mov		rsp, rbp
	pop		rbp
	ret

section .bss
	buff	resq 1
section .data
	i		dd 5
	file	db "Sully_%d.s", 0
	compile	db "nasm -g -D INSULLY -felf64 Sully_%1$d.s && gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
	quine	db "; O_WRONLY | O_CREAT | O_TRUNC%2$c%%define O_FLAGS 0x241%2$c%2$csection .text%2$c	global main%2$c	default rel%2$c	extern dprintf%2$c	extern asprintf%2$c	extern free%2$c	extern system%2$c%2$cmain:%2$c	push	rbp%2$c	mov		rbp, rsp%2$c%2$c	lea		rdi, [rel i]%2$c%%ifdef INSULLY%2$c	dec		dword [rdi]%2$c%%endif%2$c	cmp		dword [rdi], 0%2$c	jl		return%2$c%2$c	lea		rdi, [rel buff]%2$c	lea		rsi, [rel file]%2$c	lea		rdx, [rel i]%2$c	mov		rdx, [rdx]%2$c	call	asprintf wrt ..plt%2$c%2$c	mov		rax, 2%2$c	mov		rdi, [rel buff]%2$c	mov		rsi, O_FLAGS%2$c	mov		rdx, 644o%2$c	syscall%2$c%2$c	push	rax%2$c	mov		rdi, [rel buff]%2$c	call	free wrt ..plt%2$c	pop		rax%2$c%2$c	mov		rdi, rax%2$c	lea		rsi, [rel quine]%2$c	lea		rdx, [rel quine]%2$c	mov		rcx, 10%2$c	mov		r8, 34%2$c	lea		r9, [rel i]%2$c	mov		r9, [r9]%2$c	call	dprintf wrt ..plt%2$c%2$c	lea		rdi, [rel buff]%2$c	lea		rsi, [rel compile]%2$c	lea		rdx, [rel i]%2$c	mov		rdx, [rdx]%2$c	call	asprintf wrt ..plt%2$c%2$c	mov		rdi, [rel buff]%2$c	call	system wrt ..plt%2$c%2$c	mov		rdi, [rel buff]%2$c	call	free wrt ..plt%2$c%2$creturn:%2$c	mov		rsp, rbp%2$c	pop		rbp%2$c	ret%2$c%2$csection .bss%2$c	buff	resq 1%2$csection .data%2$c	i		dd %4$d%2$c	file	db %3$cSully_%%d.s%3$c, 0%2$c	compile	db %3$cnasm -g -D INSULLY -felf64 Sully_%%1$d.s && gcc Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%3$c, 0%2$c	quine	db %3$c%1$s%3$c, 0%2$c", 0
