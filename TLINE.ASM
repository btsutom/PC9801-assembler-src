code	segment
	assume ds:code, cs:code
	
	org 100h
start:
	mov	ah, 0bh
	int	18h
	and	al, 00010000b
	cmp	al, 0
	jz	line25
	mov	ah, 09h
	mov	dx, offset line31mes
	int	21h
	jmp	owari
line25:
	mov	ah, 09h
	mov	dx, offset line25mes
	int	21h
owari:
	mov	ax, 4c00h
	int	21h


line31mes	db	'line is 31',0ah,0dh,'$'
line25mes	db	'line is 25',0ah,0dh,'$'

code	ends
	end start
