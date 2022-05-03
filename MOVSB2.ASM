r equ [bp + 4]

code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ax, r
	cmp ax, '5'
	jz cp5
	mov bx, 20
	jmp prc

cp5:
	mov bx, 5
	
prc:
	mov di, offset dst
	mov si, offset src
	mov cx, bx
;	cld
	rep movsb
	
	mov ah, 09h
	mov dx, offset dst
	int 21h
	
	mov	ax, 4c00h
	int	21h
	
src db 'abcdefghijadslkvasl;dkfajlsdjklmn$'
dst db '                                 $'
code ends
end start