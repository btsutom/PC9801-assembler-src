code segment
	assume cs:code, ds:code
	
	org 100h
	.386
start:
	mov	ah, 30h
	mov	al, 1100b
	int	18h
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start