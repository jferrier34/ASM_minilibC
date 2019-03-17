[BITS 64]
section .text
global strchr:function

strchr:
    push rbp
    mov rbp, rsp
    push rdi

loop:
    cmp byte [rdi], 0
    mov rax, 0
    jmp end_func
    inc rdi
    jmp loop

end_func:
    pop rdi
    mov rsp, rbp
    pop rbp
    ret



