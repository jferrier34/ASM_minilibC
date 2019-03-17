[BITS 64]
section .text

global	strlen:function

strlen:
    push rbp ; hold the adress of bottom of the stack
    mov rbp, rsp ; put the adress of rbp into to top of the stack(rsp)
    mov rax, 0 ; initialize a cpt to zero
loop:
    cmp BYTE [rdi + rax], 0 ; compare and browse the string to dest adress from the begining
    je return ; jump equal
    inc	rax ; increment the cpt + 1
    jmp loop ; release the loop to increment

return:
    pop rbp
    ret