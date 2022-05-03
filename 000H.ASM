; •¶Žš—ñ‚Ì’u‚«Š·‚¦
code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov	dx, offset @mma
	mov	ah, 09h
	int	21h
	mov cx, $ - offset @mma
;	mov	cx, 11h
lp:
	mov	al, cl
	mov	di, cx
	add	al, 'a'
	mov	byte ptr @$[di], al
	mov byte ptr @$[di+1], 00h
	mov	dx, offset @$
	mov	ah, 09h
	int	21h
	loop	lp
fin:
	mov	dx, offset @end
	mov	ah, 09h
	int	21h

	mov ax, 4c00h
	int 21h
	
@end	db	'*',0ah,0dh,'$'
@$		db	'                      ',0ah,0dh,'$'
@mma	db	'0123456789ABCDEF123456',0ah,0dh,'$'
code	ends
	end start
	