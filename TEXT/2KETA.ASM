code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	bl, keta1
	mov	bh, keta2
	add	bl, bh
	aaa

	xor bh, bh
	add	bx, '0'
	mov	ah, 09h
	mov	dx, bx
	int	21h
	mov	ax, 4c00h
	int	21h

keta1	equ	7
keta2	equ	8
code ends
end start