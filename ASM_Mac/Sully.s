%define NB 5
%define QUOTE 34
%define NEWLINE 10

section .data
string: db "%%define NB %4$d%1$c%%define QUOTE 34%1$c%%define NEWLINE 10%1$c%1$csection .data%1$cstring: db %2$c%3$s%2$c, 0%1$cfopen_args:%1$c    .mode db %2$cw+%2$c, 0%1$csnprintf_args:%1$c    .filename db %2$cSully_%%d.s%2$c, 0%1$c    .binary_name db %2$c./Sully_%%d%2$c, 0%1$c    .compile db %2$cnasm -fmacho64 %%1$s -o Sully_%%2$d.o && gcc -m64 Sully_%%2$d.o -o %%3$s%2$c, 0%1$c%1$csection .text%1$c    global _main%1$c    extern _fprintf%1$c    extern _fopen%1$c    extern _fclose%1$c    extern _snprintf%1$c    extern _system%1$c    extern _printf%1$c%1$c_main:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 0x100%1$c    mov rcx, NB%1$c    lea rdx, [rel snprintf_args.filename]%1$c    mov rsi, 20%1$c    lea rdi, [dword rsp]%1$c    xor rax, rax%1$c    call _snprintf%1$c    lea rsi, [rel fopen_args.mode]%1$c    lea rdi, [dword rsp]%1$c    call _fopen%1$c    cmp rax, 0%1$c    je fail_end%1$c    mov rbx, rax%1$c    mov rax, NB%1$c    sub rax, 0x1%1$c    mov r9, rax%1$c    lea r8, [rel string]%1$c    mov rcx, QUOTE%1$c    mov rdx, NEWLINE%1$c    lea rsi, [rel string]%1$c    mov rdi, rbx%1$c    xor rax, rax%1$c    call _fprintf%1$c    mov rdi, rbx%1$c    call _fclose%1$c    mov rcx, NB%1$c    lea rdx, [rel snprintf_args.binary_name]%1$c    mov rsi, 20%1$c    lea rdi, [dword rsp+20]%1$c    xor rax, rax%1$c    call _snprintf%1$c    lea r9, [dword rsp+20]%1$c    mov r8, NB%1$c    lea rcx, [dword rsp]%1$c    lea rdx, [rel snprintf_args.compile]%1$c    mov rsi, 150%1$c    lea rdi, [dword rsp+40]%1$c    xor rax, rax%1$c    call _snprintf%1$c    lea rdi, [dword rsp+40]%1$c    call _system%1$c    mov rax, NB%1$c    cmp rax, 0%1$c    jle success_end%1$c    lea rdi, [dword rsp+20]%1$c    call _system%1$c    jmp success_end%1$c%1$cfail_end:%1$c    mov eax, 1%1$c    leave%1$c    ret%1$c%1$csuccess_end:%1$c    xor eax, eax%1$c    leave%1$c    ret%1$c", 0
fopen_args:
    .mode db "w+", 0
snprintf_args:
    .filename db "Sully_%d.s", 0
    .binary_name db "./Sully_%d", 0
    .compile db "nasm -fmacho64 %1$s -o Sully_%2$d.o && gcc -m64 Sully_%2$d.o -o %3$s", 0

section .text
    global _main
    extern _fprintf
    extern _fopen
    extern _fclose
    extern _snprintf
    extern _system
    extern _printf

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 0x100
    mov rcx, NB
    lea rdx, [rel snprintf_args.filename]
    mov rsi, 20
    lea rdi, [dword rsp]
    xor rax, rax
    call _snprintf
    lea rsi, [rel fopen_args.mode]
    lea rdi, [dword rsp]
    call _fopen
    cmp rax, 0
    je fail_end
    mov rbx, rax
    mov rax, NB
    sub rax, 0x1
    mov r9, rax
    lea r8, [rel string]
    mov rcx, QUOTE
    mov rdx, NEWLINE
    lea rsi, [rel string]
    mov rdi, rbx
    xor rax, rax
    call _fprintf
    mov rdi, rbx
    call _fclose
    mov rcx, NB
    lea rdx, [rel snprintf_args.binary_name]
    mov rsi, 20
    lea rdi, [dword rsp+20]
    xor rax, rax
    call _snprintf
    lea r9, [dword rsp+20]
    mov r8, NB
    lea rcx, [dword rsp]
    lea rdx, [rel snprintf_args.compile]
    mov rsi, 150
    lea rdi, [dword rsp+40]
    xor rax, rax
    call _snprintf
    lea rdi, [dword rsp+40]
    call _system
    mov rax, NB
    cmp rax, 0
    jle success_end
    lea rdi, [dword rsp+20]
    call _system
    jmp success_end

fail_end:
    mov eax, 1
    leave
    ret

success_end:
    xor eax, eax
    leave
    ret
