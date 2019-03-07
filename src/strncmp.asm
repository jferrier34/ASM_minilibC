section .text

global my_strncmp:function

my_strcmp:
    push rbp
    mov rbp, rsp
    mov rcx, 0

loop:
    

fun_end:
    pop rbp
    ret