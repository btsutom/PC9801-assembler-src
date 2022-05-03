;	EMS.asm
;
;	This asm-source is to display EMSinformation.
;
;	writed by T.Ban-nai 2018
;

code	segment
	assume cs:code, ds:code
	org 100h
	.286
	
kaigyo	macro
	push dx
	push ax
	mov  dx, offset crlf
	mov  ah, 09h
	int  21h
	pop  ax
	pop  dx
endm

start:
		mov ah, 09h
		mov dx, offset m_title
		int 21h
		xor al, al
status:
;		mov ah, 09h
		mov dx, offset m_emsstatus
		int 21h
		mov ah, 40h
		int 067h
		mov bh, ah
		call prnreg
		kaigyo
unallocate:
		mov ah, 09h
		mov dx, offset m_unallocate
		int 21h
		mov ah, 42h
		int 067h
		mov bh, ah
		call prnreg
		kaigyo
		
totalpage:
		mov ah, 09h
		mov dx, offset m_totalpage
		int 21h
		mov ah, 42h
		int 67h
		mov bh, ah
		call prnreg
		kaigyo

		mov ax, 4c00h
		int 21h

		include prnreg.asm

crlf          	db	0ah,0dh,'$'
m_title       	db	'*EMS information',0ah,0dh,'$'
m_emsstatus   	db	'          Status: $'
m_unallocate  	db	'   UnallocatPage: $'
m_totalpage 	db	'       TotalPage: $'

code	ends
		end start