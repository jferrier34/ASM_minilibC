section .text

global strcmp:function

strcmp:
    push rbp
    mov rbp, rsp
    mov rcx, 0
loop:
    mov bh, byte [rdi + rcx]
    mov bl, byte [rsi + rcx]
    cmp bh, 0
    je func_end
    cmp bl, bh
    jne func_end
    inc rcx
    jmp loop
func_end:
    sub bh, bl
    mov bl, bh
    movsx rax, bl
    pop rbp
    ret