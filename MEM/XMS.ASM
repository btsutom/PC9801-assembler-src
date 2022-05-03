code	segment
	assume ds:code, cs:code
	
	org 100h
	
main:
	mov dx, offset s
	mov ah, 09h
	int 21h
	
	mov ax, 4300h
	int 2fh
	
	cmp al, 80h
	jz  safe
	mov dx, offset xms_f
	jmp fin

safe:
	mov dx, offset xms_s
fin:
	mov ah, 09h
	int 21h
	
	mov ax, 4c00h
	int 21h

xms_s	db	'avaliable.$'
xms_f	db	'unavaliable.$'
s	db	'xms is $'
	
code	ends
	end main