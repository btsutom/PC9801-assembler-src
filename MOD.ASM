segment	code
	assume cs:code, ds:code
	
	org 100h

start:
	mov	bx, 02h      ;���鐔         **********

	xor	dx, dx       ;dx �[���N���A
	mov	dx, 07h      ;dx = �����鐔 *********
	push	dx           ;dx��ޔ�
	add	dx, '0'      ;�����鐔��\���p
	mov	ah, 09h
	int	021h
	
	mov	dx, offset slash      ;"/"��\��
	int	021h
	
	mov	dx, bx       ;���鐔��\��
	add	dx, '0'
	int	021h
	
	mov	dx, offset equal      ;=��\��
	int	021h
	
	pop	dx           ;�ޔ����Ă���dx�𕜊�
	mov	ax, dx
	div	bx           ; ax / bx   ��=al, �]��=ah
	
	add	al, '0'      ; ����\��
	mov	dl, al
;	mov	ah, 2
	int	21h
	
	mov	ax, 4c00h
	int	31h

slash	db	'/$'
equal	db	'=$'
	ends
	end start