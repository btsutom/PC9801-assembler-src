code		segment
		assume	cs:code,ds:code
		org	080h
cmdlen		db	?
cmdline		db	07fh dup (?)
;		org	100h
jmp start	
LINE		db	?
CR		db	0ah
LF		db	0dh
;		jmp	start

PutStr		macro	str
		mov	dx,offset str
		mov	ah,09h
		int	21h
		endm

IDStr		db	'BkSlash',0
IDStrLen	=	$ - IDStr

MsgTSR		db	'BkSlash v2.00 (C) Hiro-K.$'
MsgTSRLen	=	$ - MsgTSR

start:
		mov	al, '0'
		add	al, IDStrLen
		PutStr	IDStrLen
		mov	byte ptr line, MsgTSRLen
		add	line, '0'
		PutStr	line
		PutStr	cmdline
		
code		ends
end		start
