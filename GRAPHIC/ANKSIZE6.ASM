code	segment
	assume ds:code, cs:code
	
	org 100h
	
csize eq [bp+2]
	
start:
	mov	al, 06h
	out	68h, al
	mov	dx, offset size_68
	mov	ah, 09h
	int	21h

;	mov al, 07h
;	out 68h, al
;	mov dx, offset size_7d
;	mov ah,09h
;	int 21h
	
	mov ax, 4c00h
	int 21h
	
size_68	db	'size 6x8',0ah,0dh,'$'
size_7d	db	'size 7x13',0ah,0dh,'$'	
code	ends
	end start
