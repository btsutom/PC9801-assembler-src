code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	in	al, 0031h
	mov bl, al
	mov ah, 00000001b
	xor cx, cx

@loop:
	inc cx
	and bl, ah
	add bl, '0'
	mov di, cx
	mov byte ptr mstat[di], bl
	mov bl, al
	shl ah, 1
	cmp cx, 7
	jnz @loop
	
	mov ah, 09h
	mov dx, offset mbit
	int 21h
	mov dx, offset mstat
	int 21h
	mov	ax, 4c00h
	int	21h

mbit	db	'76543210',0ah, 0dh, '$'
mstat	db	'        $'
code ends
end start