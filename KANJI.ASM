code segment
	assume ds:code, cs:code
	org 100h
	
main:
	xor dx, dx
	xor cx, cx
	xor bx, bx
	mov cx, 100h
	mov bl, 20
lp:	mov dl, bl
	mov ah, 02h
	int 21h
	jz  ext
	add bl, 01h
	loop lp
ext:	mov ax, 4c00h
	int 21h
code ends
end main
