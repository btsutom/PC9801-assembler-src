code	segment
	assume ds:code, cs:code
	.186
	org 100h

start:

	mov	ah, 09h
	mov	dx, offset M_START
	int	21h
	mov	bx, 0h
	call	kaigyou
l1:
	cmp	bx,0ah
	jz	fin
	inc	bx
	mov	ax, bx
	call 	dispn
	call	kaigyou
	jmp	l1

fin:
	mov	ah,09h
	mov	dx,offset MES
	int	21h
	
	mov	ax,4c00h
	int	21h

	include disp.inc
	
M_START	db	'     -- start --$'
MES	db	'     -- finish --$'
	
code	ends
	end	start
