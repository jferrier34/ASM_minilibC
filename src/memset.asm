section .text

global	memset:function

memset:
	push rbp ; push rbp instruction pushes the value of the register rbp onto the stack. Because it "pushes" onto the stack, now the value of rsp is the memory address of the new top of the stack
	mov	rbp, rsp ; mov rbp, rsp copies the value of the stack pointer rsp to the base pointer rbp -> rpb and rsp now both point to the top of the stack
	xor	rcx, rcx ; xor of registre initialise to 0

loop:
	cmp	rcx, rdx ;  compare if rcx is equals to rdx
	je return ; go to return function
	mov	[rdi + rcx], rsi; rsi = ptr + rcx
	inc	rcx ; increment the rcx + 1
	jmp	loop ; call the loop function to release the loop

return:
	mov	rax, rdi ; returned value rdi
	mov	rsp, rbp ; for leave the fonction
	pop	rbp	; retrieves the last value pushed from the stack
	ret	; return