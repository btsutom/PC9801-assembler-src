title	r5.asm

code	segment
	assume	cs:code, ds:code
	
	org 100h
	
start:
;	mov	di, cs:si
;	jmp	offset di
	jmp cs:si
	jmp bp
code	ends
	end start