code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov dx, 0032h
	in	al, dx
	mov bl, al
	mov ah, 00000001b
	mov cx, 7

@loop:
	and bl, ah
	add bl, '0'
	push bx
	mov bx, cx
	mov byte ptr mstat[bx], bl
	pop bx
	mov bl, al
	shl ah, 1
	loop @loop
	
	and bl, ah
	mov cl, 1
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[1], bl
	mov bl, al
	
	and bl, 00000100b
	mov cl, 2
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[2], bl
	mov bl, al
	
	and bl, 00001000b
	mov cl, 3
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[3], bl
	mov bl, al
	
	and bl, 00010000b
	mov cl, 4
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[4], bl
	mov bl, al
	
	and bl, 00100000b
	mov cl, 5
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[5], bl
	mov bl, al
	
	and bl, 01000000b
	mov cl, 6
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[6], bl
	mov bl, al
	
	and bl, 10000000b
	mov cl, 7
	shr bl, cl
	add bl, '0'
	mov byte ptr mstat[7], bl
	mov bl, al
	
	mov ah, 09h
	mov dx, offset mbit
	int 21h
	mov dx, offset mstat
	int 21h
	mov	ax, 4c00h
	int	21h

mbit	db	'76543210',0ah, 0dh, '$'
mstat	db	'########$'
code ends
end start