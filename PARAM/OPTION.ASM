code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov di, 080h
	mov dx, offset di
	mov ah, 09h
	int 21h
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start