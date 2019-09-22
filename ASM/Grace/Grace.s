; entry
%define GRACE_FILE "Grace_kid.s"
%define MAIN_START main:
%define MSG "; entry%1$c%%define NADA%1$c%%define NADA%1$c%define MSG %3$c%4$c%3$c%1$c%1$cglobal main%1$c%1$c"

global main

extern dprintf

section .data
	msg db MSG, 0xa
	filename db GRACE_FILE, 0

section .text

MAIN_START
	push rbp
	mov rbp, rsp
	lea rdi, [rel filename]
	mov rsi, 0x0202
	mov rax, 0x2000005
	syscall
	mov rdi, rax
	lea rsi, [rel msg]
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	lea r9, [rel msg]
	call dprintf
	mov rsp, rbp
	pop rbp
	ret
