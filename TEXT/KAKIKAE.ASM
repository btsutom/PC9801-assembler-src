;	文字列の任意箇所を書き換える
;
;

code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov	ah, 09h
	mov	dx, offset sss
	int	21h
	
	mov	bx, 03h               ; bx=書き換える場所
	mov	byte ptr sss[bx], '@' ; sss=書き換える文字列
	mov	dx, offset sss
	int	21h
	
	mov	bx, 03h
	mov	byte ptr sss[bx], 'A'
	int	21h
	add	al, 'z'
	add	al, bl
	mov	byte ptr sss[bx+1], al
	int	21h
	
	mov	cx, 08h
@loop:	
	add	al, bl
	add	al, '0'
	mov	bx, cx
	mov	byte ptr sss[bx], al
	int	21h
	loop	@loop
	
	mov	ax, 4c00h
	int	21h
sss	db	'|--------|',0dh,0ah,'$'
code ends
end start