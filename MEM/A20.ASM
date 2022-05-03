code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:

a20_s	db	'SUCCESS.$'
a20_f	db	'FAILURE.$'
s   	db	'A20 is ... $'

;	jmp main
	
main:
	mov dx, offset s
	mov ah, 09h
	int 21h
	
;	mov ah, 43h
;	mov al, 01h
	mov ax, 4301h
	int 2fh
	
	cmp ax, 1h
	jz failure
	mov dx, offset a20_s
	jmp fin

failure:
	mov dx, offset a20_f
;	jmp fin

fin:
	mov ah, 09h
	int 21h
	
	mov ax, 4c00h
	int 21h
	
code	ends
	end start
	