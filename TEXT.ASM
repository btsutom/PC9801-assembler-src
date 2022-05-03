code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov dx, (0a000h + 10 * 3 + 4)
	mov al, '@'
	out dx, al

	mov	ax, 4c00h
	int	21h
	
code ends
end start