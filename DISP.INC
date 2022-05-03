;---------------------------------------------------------------
;一行入力                                         call lineinput
;I N bx <- buffer(offset)
;          例: INSTRING db 80 dup(0) , offset INSTRING
;    cx <- 最大文字数
;OUT ax <- 入力文字数
;break ax

;数字を表示する                                   call dispn
;I N cx <= 数字
;OUT 無し

;改行する                                         call kaigyou
;
;---------------------------------------------------------------

;一行入力    call lineinput
;IN bx <- buffer(offset)
;     例: INSTRING db 80 dup(0) , offset INSTRING
;   cx <- 最大文字数
;OUT ax <- 入力文字数
;break ax

lineinput	proc
	push	dx
	push	di
	inc	cx
	mov	di,0
input:
	mov	ah,8
	int	21h
	
	cmp	al,8
	jz	_bs
	
	mov	[bx+di],al
	cmp	al,0dh
	jz	_ret
	
	cmp	di,cx
	jz	over
	inc	di
dispc:
	mov	dl,al
	mov	ah,2
	int	21h
	
	jmp	short input
	
over:
	mov	[di+bx-1],al
	push	ax
	mov	ah,2
	mov	dl,8
	int	21h
	pop	ax
	jmp	short dispc
	
_bs:
	or	di,di
	jz	input
	mov	ah,2
	mov	dl,8
	int	21h
	mov	ah,2
	mov	dl,' '
	int	21h
	mov	ah,2
	mov	dl,8
	int	21h
	dec	di
	jmp	short input

_ret:
	mov	ah,2
	mov	dl,0dh
	int	21h
	mov	ah,2
	mov	dl,0ah
	int	21h
	
	mov	ax,di
	pop	dx
	dec	cx
	ret

;数字を表示する
;IN ax <= 数字
;OUT 無し

KETA	equ	6

dispn	proc
	pusha
	mov	cx, KETA	;;表示桁数　下と合わせる
	mov	bx,10
dispn_10:
	xor	dx,dx
	div	bx
	add	dl, '0'   ;; '0' -> 030h
	push	dx
	loop	dispn_10
	
	mov	cx, KETA	;; 表示桁数　上と合わせる
dispn_20:
	pop	dx
	mov	ah, 6     ;; original code
;	mov	ah, 2
	int	21h
	loop	dispn_20
	popa
	ret

;改行する
;

kaigyou	proc
	push	ax
	push	dx
	mov	ah,2
	mov	dl,0dh
	int	21h
	mov	dl,0ah
	int	21h
	pop	dx
	pop	ax
	ret
