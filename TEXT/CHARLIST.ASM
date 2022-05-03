code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	cx, 010h
	xor	bx, bx
@loop:
	add	bx, cx
	mov	dx, word ptr bx
	mov	ah , 09h
	int	21h
	loop	@loop
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start