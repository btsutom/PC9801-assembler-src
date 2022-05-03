code		segment	word
		assume	cs:code, ds:code
	;
		org	100h
	;
start:		jmp	chkcpu
	;
mes8086		db	"8086(V30)$"
mes80286	db	"80286$"
mes80386a	db	"80386 or later$"
	;
chkcpu:
		
		mov	ax,cs
		mov	ds,ax
		push	sp
		pop	ax
		cmp	ax,sp
		jz	cp80286a
		mov	dx,offset mes8086
		jmp	dispmes

cp80286a:
		pushf
		pushf
		pop	ax
		mov	dx,ax
		xor	ax,4000h
		push	ax
		popf
		pushf
		pop	ax
		popf
		cmp	ah,dh
		jnz	cp80386a
		mov	dx,offset mes80286
		jmp	dispmes
cp80386a:
		mov	dx,offset mes80386a

dispmes:
		mov	ah,09h
		int	21h

		mov	ax,4c00h
		int	21h

code		ends
		end	start
