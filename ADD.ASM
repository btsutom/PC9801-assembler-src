segment	code
	assume cs:code, ds:code
	
	org 100h

start:
	mov	bx, 06h      ;������

	xor	dx, dx       ;dx �[���N���A
	mov	dx, 08h      ;dx = 8
	push	dx           ;dx��ޔ�
	add	dx, '0'      ;dx��\���p
	mov	ah, 09h
	int	021h
	
	mov	dx, '+'      ;"+"��\��
	mov	ah, 09h
	int	021h
	
	mov	dx, bx       ;+�̌�̂P��\��
	add	dx, '0'
	mov	ah, 09h
	int	021h
	
	mov	dx, '='      ;=��\��
	mov	ah, 09h
	int	021h
	
	pop	dx           ;�ޔ����Ă���dx�𕜊�
	add	dx, bx       ; dx = dx + bx
	
	mov	cx, 10
	div	cx
	add	ax, '0'      ; dx��\��
	mov	dx, ax
	mov	ah, 09h
	int	21h
	
	mov	ax, 4c00h
	int	21h

ends
end start