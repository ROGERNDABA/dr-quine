global _main

extern _dprintf
extern _system

section .data
msg db "global _main%1$c%1$cextern _dprintf%1$cextern _system%1$c%1$csection .data%1$cmsg db %2$c%3$s%2$c,0%1$cfile db %2$cSully_%2$c,%4$d,46,115,0%1$ccmd_one db %2$cnasm -fmacho64 Sully_%2$c,53,46,115,0%1$ccmd_two db %2$cgcc Sully_%2$c,53,46,111,%2$c -o Sully_%2$c,53,%2$c && ./Sully_%2$c,53,0%1$c%1$csection .text%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$cmov r14, 5%1$cmov  r15, r14%1$ccmp r15, 0%1$cjl end%1$cjmp write_loop%1$c%1$cwrite_loop:%1$clea rdi, [rel file]%1$cmov rsi, 0x0202%1$cmov rax, 0x2000005%1$csyscall%1$cmov rdi, rax%1$cmov r12, rax%1$clea rsi, [rel msg]%1$cmov rdx, 10%1$cmov rcx, 34%1$clea r8, [rel msg]%1$cmov r9, 444%1$ccall _dprintf%1$clea rdi, [rel cmd_one]%1$ccall _system%1$cjmp end%1$c%1$cend:%1$cmov rsp, rbp%1$cpop rbp%1$cret%1$cret%1$c%1$csection .bss%1$cbuff resb 2048",0
file db "Sully_",53,46,115,0
cmd_one db "nasm -fmacho64 Sully_",53,46,115,0
cmd_two db "gcc Sully_",53,46,111," -o Sully_",53," && ./Sully_",53,0

section .text

_main:
push rbp
mov rbp, rsp
mov r14, 5
mov  r15, r14
cmp r15, 0
jl end
jmp write_loop

write_loop:
lea rdi, [rel file]
mov rsi, 0x0202
mov rax, 0x2000005
syscall
mov rdi, rax
mov r12, rax
lea rsi, [rel msg]
mov rdx, 10
mov rcx, 34
lea r8, [rel msg]
mov r9, 67
call _dprintf
lea rdi, [rel cmd_one]
call _system
jmp end

end:
mov rsp, rbp
pop rbp
ret
ret

section .bss
buff resb 2048