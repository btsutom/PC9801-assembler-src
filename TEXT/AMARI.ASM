;------------------------------------------
;  ax�ɓ����Ă鐔�l��\������i�������j
;------------------------------------------

code	segment
	assume ds:code, cs:code

	org 100h

start:
	mov	bx, 13d	;���鐔
	mov	ax, 80d	;�����鐔
	xor	dx, dx	;dx���[����
	div	bx		;����al, �]�肪ah
	mov	cl, al
	mov ch, ah
	
	mov dx, offset msg_shou
	mov ah, 09h
	int 21h
	
	mov	dl, cl	;����dl��
	mov	ah, 02h
	add	dl, '0'	;���𕶎��R�[�h�ɕϊ�
	int	21h
	
	mov dx, offset msg_amari
	mov ah, 09h
	int 21h
	
	mov	dl, ch	;�]���dl��
	mov ah, 02h
	add	dl, '0'
	int	21h
	
	mov	ax,4c00h
	int	21h
	
msg_shou db '��=$'
msg_amari db 0ah,0dh,'�]��=$'
	ends
end	start
	