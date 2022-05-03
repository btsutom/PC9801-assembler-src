;------------------------------------------
;  axに入ってる数値を表示する（したい）
;------------------------------------------

code	segment
	assume ds:code, cs:code

	org 100h

start:
	mov	bx, 13d	;割る数
	mov	ax, 80d	;割られる数
	xor	dx, dx	;dxをゼロに
	div	bx		;商がal, 余りがah
	mov	cl, al
	mov ch, ah
	
	mov dx, offset msg_shou
	mov ah, 09h
	int 21h
	
	mov	dl, cl	;商をdlに
	mov	ah, 02h
	add	dl, '0'	;商を文字コードに変換
	int	21h
	
	mov dx, offset msg_amari
	mov ah, 09h
	int 21h
	
	mov	dl, ch	;余りをdlに
	mov ah, 02h
	add	dl, '0'
	int	21h
	
	mov	ax,4c00h
	int	21h
	
msg_shou db '商=$'
msg_amari db 0ah,0dh,'余り=$'
	ends
end	start
	