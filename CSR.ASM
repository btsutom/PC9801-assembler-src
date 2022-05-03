segment	code
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov	ah, 1dh
	mov	al, 200
	int	18h
	
	mov	ax,4c00h
	int	21h
	
code ends
end	start
