code segment
	assume cs:code, ds:code, es:code, ss:code
	
	org 100h
o1 equ [bp + 2]
o2 equ [bp + 4]
start:
	mov bx, 'a'
	cmp o1, bx
	jz  yes_a
	mov dx, 'N'
	mov ah, 02h
	int 021h
	jmp _O2
yes_a:
	mov dx, 'Y'
	int 021h
_O2:
	mov bx, 'b'
	cmp o2, bx
	jz yes_b
	mov dx, 'N'
	int 021h
	jmp EE
yes_b:
	mov dx, 'Y'
	int 021h
EE:
	mov	ax, 4c00h
	int	21h
	
code ends
end start