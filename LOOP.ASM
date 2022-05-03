code segment
	assume cs:code, ds:code
;	org 07fh
;cmdline db 080h dup (?)
	org 100h
	
start:
	mov	ah, 09h
	mov	dx, [bp + 2 + '0']
	int	021h
	
	mov	ax, 4c00h
	int	21h

code ends
end start