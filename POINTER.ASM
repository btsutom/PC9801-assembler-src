code segment
	assume cs:code, ds:code
	
	org 00h
abcd	db 100h dup(?)

crlf	macro
	mov dx, offset kaigyou
	mov ah, 09h
	int 21h
	endm

start:
	mov ah, 09h

	mov dx, word ptr num+1000h
	int 21h
	crlf
	
;	mov dx, word ptr [num]
;	int 21h
;	crlf
	
	mov dx, offset num
	int 21h
	crlf
	
	mov	ax, 4c00h
	int	21h
	
num	db '7','$'
kaigyou db ' ##### ',10,13,'$'

code ends
end start