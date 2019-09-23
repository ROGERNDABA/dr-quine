; global comment ;
global main
global _main

extern _printf

section .data

message:
	db "; global comment ;%1$cglobal main%1$cglobal _main%1$c%1$cextern _printf%1$c%1$csection .data%1$c%1$cmessage:%1$c%2$cdb %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%1$cmain:%1$c_main:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$clea rdi, [rel message]%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$clea r8, [rel message]%1$c%2$ccall _printf%1$c%2$cmov rsp, rbp%1$c%2$cpop rbp%1$c%2$cret%1$c", 0

section .text

main:
_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel message]
	mov rsi, 10
	mov rdx, 9
	mov rcx, 34
	lea r8, [rel message]
	call _printf
	mov rsp, rbp
	pop rbp
	ret
