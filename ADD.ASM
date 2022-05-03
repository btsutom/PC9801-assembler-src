segment	code
	assume cs:code, ds:code
	
	org 100h

start:
	mov	bx, 06h      ;足す数

	xor	dx, dx       ;dx ゼロクリア
	mov	dx, 08h      ;dx = 8
	push	dx           ;dxを退避
	add	dx, '0'      ;dxを表示用
	mov	ah, 09h
	int	021h
	
	mov	dx, '+'      ;"+"を表示
	mov	ah, 09h
	int	021h
	
	mov	dx, bx       ;+の後の１を表示
	add	dx, '0'
	mov	ah, 09h
	int	021h
	
	mov	dx, '='      ;=を表示
	mov	ah, 09h
	int	021h
	
	pop	dx           ;退避していたdxを復活
	add	dx, bx       ; dx = dx + bx
	
	mov	cx, 10
	div	cx
	add	ax, '0'      ; dxを表示
	mov	dx, ax
	mov	ah, 09h
	int	21h
	
	mov	ax, 4c00h
	int	21h

ends
end start