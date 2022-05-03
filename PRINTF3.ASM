segment code
	extrn	_printf:near
	assume	cs:code
_main:
	push	bp
	mov	bp,sp
	push	cx
	mov	cl,1
	mov	ch,2
	mov	bl,cl
	add	bh,ch
	push	bx
	mov	bx,offset s@
	push	bx
	call	near ptr _printf
	pop	bx
	pop	cx
	pop	bp
;	pop	di
;	pop	si
;	pop	bp
	ret	

s@	label	byte
	db	'1+2=%d'
	db	0
code ends
end _main