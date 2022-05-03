title	r3.asm

code	segment
	assume	cs:code, ds:code
	
	org 100h
	
start:
	mov ax, 10100000b
	out 35h, ax
;	mov ax, 00f0h
;	out 00h, ax
	
code	ends
	end start