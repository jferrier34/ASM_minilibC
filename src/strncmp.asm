section .text

global strncmp:function

strncmp:
    push rbp
    mov rbp, rsp
    cmp rdi, 0
    je fun_end2
    cmp rsi, 0
    je fun_end2
    cmp rdi, 0
    jle fun_end2

loop:
    mov bh, byte [rdi]
    mov bl, byte [rsi]
    cmp bh, 0
    je fun_end
    cmp bh, bl
    jne fun_end
    inc rdi
    inc rsi
    dec rdx
    cmp rdx, 0
    jle func_end
    jmp loop

fun_end2:
    mov rax, 0
    pop rbp
    ret

fun_end:
    sub bh, bl
    mov bl, bh
    movsx rax, bl
    pop rbp
    ret