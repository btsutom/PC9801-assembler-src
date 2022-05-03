code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	dx, offset s
	mov	ah, 09h
	int	21h
	
	jmp $+4
	mov	ax, 4c00h
	int	21h
s	db	'This is a pen.',0ah,0dh,'$'
code ends
end start