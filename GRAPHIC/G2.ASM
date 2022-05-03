code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	
	mov dx, 06ah
	mov ax, 07h
	out dx, ax	;モード変更可
	mov ax, 021h
	out dx, ax	;拡張モード
	
	mov ax, 07h
	out dx, ax
	mov ax, 020h
	out dx, ax	;標準モード
	
	mov	ax, 4c00h
	int	21h
	
mes1	db	'normal graphicsmode',0ah,0dh,'$'
mes2	db	'expanded graphicsmode',0ah,0dh,'$'
code ends
end start