; X, Y ��1����(CHAR)��\������v���O����
;
; PC-9821Cx model S2 MEM16MB ODP
; Turbo C++  Version 1.01 Copyright (c) 1990 Borland International
; Turbo Assembler  Version 2.0  Copyright (c) 1988, 1990 Borland International
;

code segment
	assume cs:code, ds:code
	
	org 100h
;
;�w�A�x����e�L�X�g�u�q�`�l�A�h���X(di)���v�Z����B
;	di = X*2 + Y*2*80
;

start:
	mov bx, word ptr [X]
	mov di, bx
	shl di, 1            ; di = X * 2

	mov ax, word ptr [Y]
	mov bx, 160          ; 160 = 2 * 80
	mul bx               ; mul bx  is  ax <= ax * bx
	add di, ax           ; di = X*2(di) + Y*160(ax)

	mov bx, [CHR]        ; CHAR ��\��������
	mov ax, 0a000h       ; TextVRAM �X�^�[�g�A�h���X = 0a000h
	mov es, ax
	mov word ptr es:di, bx
	mov ax, 0a200h       ; TextVRAM ���������X�^�[�g�A�h���X= 0a200h
	mov es, ax
	mov bx, word ptr [ATT]     ; ��������
	mov word ptr es:di, bx

	mov	ax, 4c00h
	int	21h

CHR dw 120,'$'
X	dw	30,'$'           ; ���S�O������
Y	dw	15,'$'           ; �c�P�T�s�ځ@�ɕ\��
ATT dw  1011111b,'$'     ; ��������

code ends
end start
