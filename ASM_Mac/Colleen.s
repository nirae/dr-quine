; commentaire en dehors
section .data
string: db "%4$c commentaire en dehors%1$csection .data%1$cstring: db %3$c%2$s%3$c, 0%1$c%1$csection .text%1$c    global print%1$c    global _main%1$c    extern _printf%1$c%1$cprint:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    mov r8, 59%1$c    mov rcx, 34%1$c    lea rdx, [rel string]%1$c    mov rsi, 10%1$c    lea rdi, [rel string]%1$c    xor rax, rax%1$c    call _printf%1$c    add rsp, 16%1$c    leave%1$c    ret%1$c%1$c_main:%1$c    %4$c commentaire dans main%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    call print%1$c    xor rax, rax%1$c    add rsp, 16%1$c    leave%1$c    ret%1$c", 0

section .text
    global print
    global _main
    extern _printf

print:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    mov r8, 59
    mov rcx, 34
    lea rdx, [rel string]
    mov rsi, 10
    lea rdi, [rel string]
    xor rax, rax
    call _printf
    add rsp, 16
    leave
    ret

_main:
    ; commentaire dans main
    push rbp
    mov rbp, rsp
    sub rsp, 16
    call print
    xor rax, rax
    add rsp, 16
    leave
    ret
