code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ah, 010h
	mov al, 01h
	int 18h
	
	mov ah, 013h
	mov dx, 200d
	int 18h
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start