code	segment
	assume ds:code, cs:code

	org 100h

start:
	xor	bl, bl
hajime:
	mov	ah,02h
	mov	dl,bl
	add dl, 01fh
	int	21h

	cmp	bl,07fh
	jz	fin
	inc	bl
	jmp	hajime
fin:
	mov	ax,4c00h
	int	21h
	
	ends
end	start
	