; X, Y �ɕ����� SM �𑮐��t���ŕ\������v���O����
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
	xor bx, bx           ; bx = 0
	
disp:
	mov ax, 0a000h       ; TextVRAM �X�^�[�g�A�h���X = 0a000h
	mov es, ax
	mov dl, byte ptr SM[bx]
	mov byte ptr es:di, dl
	mov ax, 0a200h       ; TextVRAM ���������X�^�[�g�A�h���X= 0a200h
	mov es, ax
	mov cx, word ptr [ATT]     ; ��������
	mov word ptr es:di, cx
	add di, 02h
	inc bx
	cmp SM[bx], '$'
	jnz disp
	
	mov	ax, 4c00h
	int	21h

X	dw	10,'$'             ; ��10������
Y	dw	20,'$'             ; �c20�s�ځ@�ɕ\��
ATT dw  0101011b,'$'       ; ��������
SM  db  'Hello, World.','$' ; �\��������

code ends
end start