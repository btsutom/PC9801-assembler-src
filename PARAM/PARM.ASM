code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov	cx, 0fh
	mov	si, 082h
lp:
	mov	dx, word ptr [si]
	mov	ah, 09h
	int	21h
	inc	si
	loop	lp
	
	mov	ax, 4c00h
	int	21h

code	ends
	end start