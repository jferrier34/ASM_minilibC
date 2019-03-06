section .text

global	strlen:function

strlen:
    push rbp 
    mov rbp, rsp
    mov rax, 0
loop:
    cmp BYTE [rdi + rax], 0
    je return
    inc	rax
    jmp loop

return:
    pop rbp
    ret