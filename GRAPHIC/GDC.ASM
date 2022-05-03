code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov	al, 0h
	out	62h, al
	mov	dx, offset crlf
	mov	ah, 09h
	int	21h

	mov al, 01h
	out 62h, al
;	int 21h
	
	mov ax, 4c00h
	int 21h
	
crlf	db	'*',0ah,0dh,'$'
	
code	ends
	end start
