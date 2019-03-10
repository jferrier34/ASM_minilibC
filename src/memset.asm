[BITS 64]
section .text

global	memset:function

memset:
	push rbp ; push rbp instruction pushes the value of the register rbp into the stack. Because it "pushes" into the stack, now the value of rsp is the memory address of the new top of the stack
	mov	rbp, rsp ; mov rbp, rsp copies the value of the stack pointer rsp to the base pointer rbp -> rpb and rsp now both point to the top of the stack
	xor	rcx, rcx ; xor of registre initialise to 0

loop:
	cmp	rcx, rdx ;  compare if rcx is equals to rdx
	je return ; jump equal exit the program
	mov	[rdi + rcx], rsi ; rsi = rdi + rcx
	inc	rcx ; increment the rcx + 1 each loop
	jmp	loop ; call the loop function to release the loop

return:
	mov	rax, rdi ; returned value of rdi 
	mov	rsp, rbp ; to leave the fonction
	pop	rbp	; replace the initit place at the begin of the stack
	ret	; return