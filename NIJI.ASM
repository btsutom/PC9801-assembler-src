segment	code
	assume	ds:code, cs:code
	
	org	100h

start:
	mov	bx,0a200h
	mov	es,bx
	
	xchg	ax,bx
	clc
	mov	cl,4
	mov	di,0f893h
	
	shr	di,cl
	add	di,17h
	
	mov	al,7
	std
loop1:
	add	al,020h
	stosb
	dec	di
	
	jns	loop1
	mov	ax,4c00h
	int	21h

code	ends
	end start