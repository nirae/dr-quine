section .text
    global main
    extern fprintf
    extern fopen
    extern fclose

; commentaire

%define STRING "section .text%1$c    global main%1$c    extern fprintf%1$c    extern fopen%1$c    extern fclose%1$c%1$c; commentaire%1$c%1$c%%define STRING %3$c%2$s%3$c%1$c%%define NEWLINE 10%1$c%%define QUOTE 34%1$c%1$csection .data%1$cstring: db STRING, 0%1$cfopen_args:%1$c    .filename db %3$cGrace_kid.s%3$c, 0%1$c    .mode db %3$cw+%3$c, 0%1$c%1$c%%macro FT 0%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    lea rsi, [rel fopen_args.mode]%1$c    lea rdi, [rel fopen_args.filename]%1$c    call fopen%1$c    mov rbx, rax%1$c    mov r8, QUOTE%1$c    lea rcx, [rel string]%1$c    mov rdx, NEWLINE%1$c    lea rsi, [rel string]%1$c    mov rdi, rbx%1$c    xor rax, rax%1$c    call fprintf%1$c    mov rdi, rbx%1$c    call fclose%1$c    xor rax, rax%1$c    leave%1$c    ret%1$c%%endmacro%1$c%1$cFT"
%define NEWLINE 10
%define QUOTE 34

section .data
string: db STRING, 0
fopen_args:
    .filename db "Grace_kid.s", 0
    .mode db "w+", 0

%macro FT 0
main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rsi, [rel fopen_args.mode]
    lea rdi, [rel fopen_args.filename]
    call fopen
    mov rbx, rax
    mov r8, QUOTE
    lea rcx, [rel string]
    mov rdx, NEWLINE
    lea rsi, [rel string]
    mov rdi, rbx
    xor rax, rax
    call fprintf
    mov rdi, rbx
    call fclose
    xor rax, rax
    leave
    ret
%endmacro

FT