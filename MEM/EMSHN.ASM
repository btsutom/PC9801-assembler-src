;	EMS.asm
;
;	This asm-source is to display EMSinformation.
;
;	writed by T.Ban-nai 2021
;

code	segment
	assume cs:code, ds:code, es:code
	org 100h
;	.286
	
start:
		mov ax, offset hname
		mov es, ax
		mov di, offset hname
		mov ah, 053h
		mov al, 000h

		mov dx, 1
		int 67h
		mov byte ptr hname[9], '$'
		mov ah, 09h
		mov dx, offset hname
		int 21h

		mov ax, 4c00h
		int 21h

hname 	db	'           $'

code	ends
		end start