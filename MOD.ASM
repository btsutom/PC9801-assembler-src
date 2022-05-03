segment	code
	assume cs:code, ds:code
	
	org 100h

start:
	mov	bx, 02h      ;割る数         **********

	xor	dx, dx       ;dx ゼロクリア
	mov	dx, 07h      ;dx = 割られる数 *********
	push	dx           ;dxを退避
	add	dx, '0'      ;割られる数を表示用
	mov	ah, 09h
	int	021h
	
	mov	dx, offset slash      ;"/"を表示
	int	021h
	
	mov	dx, bx       ;割る数を表示
	add	dx, '0'
	int	021h
	
	mov	dx, offset equal      ;=を表示
	int	021h
	
	pop	dx           ;退避していたdxを復活
	mov	ax, dx
	div	bx           ; ax / bx   商=al, 余り=ah
	
	add	al, '0'      ; 商を表示
	mov	dl, al
;	mov	ah, 2
	int	21h
	
	mov	ax, 4c00h
	int	31h

slash	db	'/$'
equal	db	'=$'
	ends
	end start