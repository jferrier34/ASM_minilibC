[BITS 64]
section .text
global	rindex:function

rindex:
    push    rbp
    mov     rbp, rsp
    mov     rcx, 0
    mov     rax, 0
    mov     rbx, rsi
to_end:
    cmp     byte[rdi + rcx], 0
    je      find_char
    inc     rcx
    jmp     to_end
find_char:
    cmp     rcx, 0
    jl      exit
    cmp     byte[rdi + rcx], bl
    je      found
found:
    add     rdi, rcx
    mov     rax, rdi
exit:
    pop     rbp
    ret