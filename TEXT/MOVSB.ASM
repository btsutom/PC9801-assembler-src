code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	cld
	mov si, offset str1
	mov di, offset str2
	mov cx, 5
	rep movsb
	
	mov dx, offset str2
	mov ah, 09h;
	int	21h
	mov	ax, 4c00h
	int	21h

str1	db 'abcdefgh$'
str2	db '        $'
code ends
end start