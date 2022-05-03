code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ax, 5e00h
	mov dx, offset mname
	mov ds, dx
	int 21h
	
	test ax, 01h
	jz	fault
	mov ah, 09h
	int 21h
	jmp @end
	
fault:
	mov dx, offset fstr
	mov ah, 09h
	int 21h

@end:
	mov	ax, 4c00h
	int	21h

;mname db 200 dup(?)
mname db '                $'
fstr db 'fault',0ah, 0dh, '$'
code ends
end start