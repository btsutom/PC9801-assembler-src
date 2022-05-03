code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ah, 06h
	mov cx, 2000
	mov dx, 800
	int 1ch
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start