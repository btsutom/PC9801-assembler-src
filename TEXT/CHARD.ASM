code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov bx, ' '-1
	mov cx, 0ffh - ' '
@rep:
	mov dx, cx
	add dx, ' '
	mov ah, 02h
	int 21h
	loop @rep
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start