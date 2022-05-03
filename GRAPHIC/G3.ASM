code segment
	assume cs:code, ds:code
	
	org 100h
	
start:					;現在のモードを表示
	mov dx, 09a0h
	mov ax, 0ah
	out dx, ax
	in  al, dx
	and al, 01h
	cmp al, 00h
	jz  normal
	mov ah, 09h
	mov dx, offset m_exp
	int 21h
	jmp expmode
	
normal:
	mov ah, 09h
	mov dx, offset m_norm
	int 21h
	
expmode:					;拡張モードに変更
	mov dx, 06ah
	mov ax, 07h
	out dx, ax	;モード変更可
	mov ax, 021h
	out dx, ax	;拡張モード

	mov dx, 09a0h
	mov ax, 0ah
	out dx, ax
	in  al, dx
	and al, 01h
	cmp al, 00h
	jz  normal1
	mov ah, 09h
	mov dx, offset m_exp
	int 21h
	jmp normmode
	
normal1:
	mov ah, 09h
	mov dx, offset m_norm
	int 21h

normmode:					;標準モードに変更
	mov dx, 06ah
	mov ax, 07h
	out dx, ax
	mov ax, 020h
	out dx, ax	;標準モード

	mov dx, 09a0h			;現在のモードを表示
	mov ax, 0ah
	out dx, ax
	in  al, dx
	and al, 01h
	cmp al, 00h
	jz  normal2
	mov ah, 09h
	mov dx, offset m_exp
	int 21h
	jmp @end
	
normal2:
	mov ah, 09h
	mov dx, offset m_norm
	int 21h
	
@end:
	mov dx, offset m_end
	int 21h
	mov	ax, 4c00h
	int	21h
	
m_norm	db	' normal  graphicsmode',0ah,0dh,'$'
m_exp	db	'expanded graphicsmode',0ah,0dh,'$'
m_end	db	'- end -',0ah,0dh,'$'
code ends
end start