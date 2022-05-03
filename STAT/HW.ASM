code	segment
	assume ds:code, cs:code
	
	org 100h
	
;	jmp start
;mes	db	'##',0ah, 0dh, '$'
start:
	xor cx, cx
sss:
	add cx, 01h
	mov dx, cx
	add dx, 080h
	mov ah, 09h
	int 21h
	
	mov dx, offset mes
	int 21h
	
	cmp cx, 0fh
	jz finish
	jmp sss
	
finish:
	mov ax, 4c00h
	int 21h

mes	db	'##.$',0ah, 0dh, '$'
code	ends
	end start
