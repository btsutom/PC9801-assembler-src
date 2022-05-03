code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	ah, 1eh
	mov	al, 20h
	mov	dh, 05h
	mov	dl, 0fh
	int	18h
	mov	ax, 4c00h
	int	21h
	
code ends
end start