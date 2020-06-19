; commentaire

%define STRING "; commentaire%1$c%1$c%%define STRING %3$c%2$s%3$c%1$c%%define QUOTE 34%1$c%%macro FT 0%1$c_main:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c    lea rsi, [rel fopen_args.mode]%1$c    lea rdi, [rel fopen_args.filename]%1$c    call _fopen%1$c    cmp rax, 0%1$c    je fail_end%1$c    mov rbx, rax%1$c    mov r8, QUOTE%1$c    lea rcx, [rel string]%1$c    mov rdx, 10%1$c    lea rsi, [rel string]%1$c    mov rdi, rbx%1$c    xor rax, rax%1$c    call _fprintf%1$c    mov rdi, rbx%1$c    call _fclose%1$c    jmp success_end%1$cfail_end:%1$c    mov eax, 1%1$c    leave%1$c    ret%1$csuccess_end:%1$c    xor eax, eax%1$c    leave%1$c    ret%1$c%%endmacro%1$c%1$csection .data%1$cstring: db STRING, 0%1$cfopen_args:%1$c    .filename db %3$cGrace_kid.s%3$c, 0%1$c    .mode db %3$cw+%3$c, 0%1$c%1$csection .text%1$c    global _main%1$c    extern _fprintf%1$c    extern _fopen%1$c    extern _fclose%1$c%1$cFT%1$c"
%define QUOTE 34
%macro FT 0
_main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rsi, [rel fopen_args.mode]
    lea rdi, [rel fopen_args.filename]
    call _fopen
    cmp rax, 0
    je fail_end
    mov rbx, rax
    mov r8, QUOTE
    lea rcx, [rel string]
    mov rdx, 10
    lea rsi, [rel string]
    mov rdi, rbx
    xor rax, rax
    call _fprintf
    mov rdi, rbx
    call _fclose
    jmp success_end
fail_end:
    mov eax, 1
    leave
    ret
success_end:
    xor eax, eax
    leave
    ret
%endmacro

section .data
string: db STRING, 0
fopen_args:
    .filename db "Grace_kid.s", 0
    .mode db "w+", 0

section .text
    global _main
    extern _fprintf
    extern _fopen
    extern _fclose

FT
