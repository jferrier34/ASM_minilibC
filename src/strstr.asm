[BITS 64]
section .text
global  strstr:function

strstr:
    push rbp ; hold the first pointer of the stack and replace to the top
    mov rbp, rsp ; replace the adress of the top of the stack by the first (rbp)
    cmp rsi, 0 ; if the first arg is null
    je end_func ; exit the program
    cmp rdi, 0 ; if the second arg is null
    je end_func ; exit the program
    mov rdx, rdi ; stock the second arg how is the destination in a variable rdx
    mov rcx, rsi ; stock the first arg how is the source in a variable rcx

loop:
    mov bh, byte[rdx] ; stock the contain of rdx in bh who his size is 8bits
    move bl, byte[rcx] ; stock the contain of rcx in bl who his size is 8bits to
    cmp bh, 0 ; condition to ckeck if bh is equals to 0/null
    je end_func ; if the condition is true exit the program
    cmp bl, 0 ; condition to check if bl is equals to 0/null
    je end_func ; if the condition is true exit the program
    cmp bh, bl ; compare the contain of bh and bl
    inc rdi ; increment rdi + 1 each loop
    mov rcx, rsi ; change the adress of rsi to rcx
    mov rdx, rdi ; change the adress of rdx to rdx
    jmp end_func ; exit the program
    inc rdx ; increment + 1 rdx each loop
    inc rcx ; increment + 1 rcx each loop
    jmp end_func ; exit the program

end_func:
    mov rax, rdi
    pop rbp
    ret