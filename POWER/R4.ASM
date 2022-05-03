title	r4.asm

code	segment
	assume	cs:code, ds:code
	
	org 100h
	
start:
;	mov	di, cs:si
;	jmp	offset di
	jmp cs:si
code	ends
	end start