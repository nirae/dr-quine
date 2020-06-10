; commentaire en dehors
section     .text
    global      print
    global      main
    extern      printf

section     .data
hello:
    .format     db  "%s, %s", 10, 0
    .string1     db  "Hello", 0
    .string2     db  "World!", 0
string: db "big string here"

print:
    lea     rdx, [rel hello.string2]
    lea     rsi, [rel hello.string1]
    lea     rdi, [rel hello.format]
    xor     rax, rax
    call    printf
    leave
    ret

main:
    ; commentaire dans main
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    call    print
    xor     rax, rax
    leave
    ret
