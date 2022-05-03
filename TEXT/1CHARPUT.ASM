segment	code
	assume cs:code, ds:code, ss:code
	
	org 100h
	
ssss:
	mov byte ptr mm[0], 'a'
	mov byte ptr mm[1], 'B'
	mov byte ptr mm[2], 0ah
	mov byte ptr mm[3], 0dh
	mov byte ptr mm[4], '$'
	mov dx, offset mm
	mov ah, 09h
	int 21h
	
	shl byte ptr mm[0], 1
	add byte ptr mm[0], 0fh;
	int 21h
	
	shr byte ptr mm[0], 1
	int 21h
	
	mov ax, 4c00h
	int 21h
mm db 5 dup (?)
ends
	end ssss