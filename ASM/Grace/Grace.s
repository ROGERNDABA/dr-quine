; entry
%define GRACE_FILE "Grace_kid.s"
%define MAIN_START _main:
%define MSG "; entry%1$c%%define GRACE_FILE %3$cGrace_kid.s%3$c%1$c%%define MAIN_START _main:%1$c%%define MSG %3$c%4$s%3$c%1$c%1$cglobal _main%1$c%1$cextern _dprintf%1$c%1$csection .data%1$c%2$cmsg db MSG, 0%1$c%2$cfilename db GRACE_FILE, 0%1$c%1$csection .text%1$c%1$cMAIN_START%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$clea rdi, [rel filename]%1$c%2$cmov rsi, 0x0202%1$c%2$cmov rax, 0x2000005%1$c%2$csyscall%1$c%2$cmov rdi, rax%1$c%2$clea rsi, [rel msg]%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 34%1$c%2$clea r9, [rel msg]%1$c%2$ccall _dprintf%1$c%2$cmov rsp, rbp%1$c%2$cpop rbp%1$c%2$cret%1$c"

global _main

extern _dprintf

section .data
	msg db MSG, 0
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
	call _dprintf
	mov rsp, rbp
	pop rbp
	ret
