[BITS 64]
section .text

global	memcpy:function

memcpy:
	push rbp ; push rbp instruction pushes the value of the register rbp onto the stack. Because it "pushes" onto the stack, now the value of rsp is the memory address of the new top of the stack
	mov	rbp, rsp ; mov rbp, rsp copies the value of the stack pointer rsp to the base pointer rbp -> rpb and rsp now both point to the top of the stack
	xor	rcx, rcx ; xor of registre initialise to 0

loop:
	cmp	rcx, rdx ; compare if rcx == rdx
	jz	return ; jump is result is inferior than 0
	mov	al, byte [rsi + rcx] ; stock in al the contain of rsi (source or first arg of the function)
	mov	byte [rdi + rcx], al; dest + rcx = rax
	inc	rcx	; rcx + 1
	jmp	loop ; do a new loop

return:
	mov	rax, rdi ; return the value of rdi
	mov	rsp, rbp ; to leave the fonction
	pop	rbp	; replace the initit place at the begin of the stack
	ret	; return