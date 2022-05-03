code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov ax, 4c01h
	int 21h
	
code	ends
	end start
