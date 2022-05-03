title	r2.asm

code	segment
	assume	cs:code, ds:code
	
	org 100h
	
start:
	mov	di, cs:si
	jmp	offset di
	
code	ends
	end start