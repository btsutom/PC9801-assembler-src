code segment
	assume cs:code, ds:code
	
	org 100h


start:
	in al, 031h
	mov bl, 10000000b ; bit8‚©‚çbit1‚ÉŒü‚©‚Á‚Ä’²‚×‚é
	mov cx, 8
_loop:
	mov dl, al
	and dl, bl
	je _1
	mov dx, offset b0
	jmp _d
_1:
	mov dx, offset b1
_d:
	mov ah, 09h
	int 21h

	shr bl,1
	loop _loop

	mov	ax, 4c00h
	int	21h

b1 db '1','$'
b0 db '0','$'
code ends
end start
