[BITS 64]
section .text

global strcmp:function

strcmp:
    push rbp ; hold the first element of the stack
    mov rbp, rsp ; change the adress of the first to replace of the top
    mov rcx, 0 ; initialize the cpt to 0
loop:
    mov bh, byte [rdi + rcx] ; increment the cpt rcx of rsi (source adress to dest rdi adress to compare)
    mov bl, byte [rsi + rcx] ; char c = (char) s2[rcx] rsi is the second argument and rdi is the first
    cmp bh, 0 
    je func_end ; jump equal
    cmp bl, bh ; permit to compare the two strings 
    jne func_end ; jump != equal 
    inc rcx ; increment to te loop 
    jmp loop ; release the loop
func_end:
    sub bh, bl ; substract between bh and bl
    mov bl, bh ; bh et bl sont dans rax 
    movsx rax, bl ; vu que rax 64b > bl (8) on force l'insertion de bl dans rax 
    pop rbp
    ret