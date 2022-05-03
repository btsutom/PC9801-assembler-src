code	segment
	assume	cs:code, ds:code
	
	org 100h
	
start:
;B:\SRC\ASM>od -h r.com
;0000000  00b8 e700 b835 00f0 00e7

	mov ax, 00000000b  ;b8-> mov ax  00->00000000b
	out 35h, ax
	mov ax, 00f0h
	out 00h, ax
	
code	ends
	end start