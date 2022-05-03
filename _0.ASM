code segment
	assume cs:code, ds:code
	
	org 100h
	
start:

	mov	ax, 4c00h
	int	21h
	
code ends
end start