[BITS 64]
section .text
global	rindex:function

rindex:
    push    rbp ; push the adress rbp on the top of the stack
    mov     rbp, rsp ; change the top adress of the stack for the adress of the last
    mov     rcx, 0 ; initialize a cpt rcx to zero
    mov     rax, 0 ; initialize a cpt2 rax to zero
    mov     rbx, rsi ; 
to_end:
    cmp     byte[rdi + rcx], 0 ; browse byte to byte if equal to zero
    je      find_char ; 
    inc     rcx ; increment the cpt rcx
    jmp     to_end ; jump to to_end 
find_char:
    cmp     rcx, 0 ; compare if rcx is equal to zero
    jl      exit ; if the value is below of the second exit
    cmp     byte[rdi + rcx], bl ; compare byte to byte 
    je      found ; if equal go to find
found:
    add     rdi, rcx ; add rdi to rcx
    mov     rax, rdi ; change the adress of rax to rdi
exit:
    pop     rbp
    ret