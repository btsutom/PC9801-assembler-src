segment	code
	assume cs:code, ds:code
	
	org 100h

start:
	mov dx, offset mes
	mov ah, 09h
	int 21h

mess:
	mov dx, offset mes1
	int 21h
	
	mov ax, 3100h
;;	mov dx, ((offset start - 100h) / 16 ) + 1
	mov dx, offset start - 100h
	shr dx, 1
	shr dx, 1
	shr dx, 1
	shr dx, 1
	add dx, 1
;;	mov dx, 0h
	int 21h
	jmp mess
	
mes	db	'Its TSR.',10,13,'$'
mes1 db 'Hello, world.$'
code	ends
end start
	