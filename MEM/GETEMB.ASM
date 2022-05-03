code segment
	assume cs:code, ds:code

	.386
	org 100h
	
start:
	mov	ah, 09h
	mov	dx, 10h
	int	2fh
	
	cmp	ax, 1h
	jz	ok
	mov	dx, offset m_ng
	mov	ah, 09h
	int	21h
	jmp	owari
ok:
	mov	dx, offset m_ok
	mov	ah, 09h
	int	21h
owari:	mov	ax, 4c00h
	int	21h
	
m_ok	db	'ok$'
m_ng	db	'ng$'
code ends
end start