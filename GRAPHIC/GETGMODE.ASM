code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	ah, 31h
	int	18h
	
	cmp	al, 100b
	jz	mode31khz
	mov	dx, offset m24
	jmp	owari

mode31khz:
	mov	dx, offset m31

owari:
	mov	ah, 09h
	int	21h
	mov	ax, 4c00h
	int	21h

m24	db	'24kHz$'
m31	db	'31kHz$'
code ends
end start