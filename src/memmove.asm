section .text

global memmove:function

memmove:
    push rbp ; hold the first adress of the stack
    mov rbp, rsp ; move and deplace the adress of the last case of the stack (rsp) in rpb
    mov rbx, rdi ; copy of stack the value of the first arg in rdx variable
    cmp rdi, 0 ; if the first arg is null exit the program
    je end_func ; exit the program
    cmp rsi, 0 ; if the second arg is null exit the program
    je end_func ; exit the program

loop:
    mov bl, byte [rsi] ; copy the contain of rsi in bl who contain 8 bits
    cmp rdx, 0 ; check if the contain of rdx is null
    jle end_func ; jump of the end_func adress if is lower 
    mov byte [rdi], bl
    inc rdi
    inc rsi
    dec rdx
    jmp loop

end_func:
    mov rax, rbx
    pop rbp
    ret
