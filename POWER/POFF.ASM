; PC-9821Cx �d���I�t�R�}���h
;I/O	0F4Ah
;���O	�����R������[INDEX]
;�@�\
;	bit 7�`0: ���W�X�^�w��
;		* I/O 0F4Bh�œǂݏ������郌�W�X�^�ԍ����w�肷��
;�֘A	I/O 0F4Bh
;		I/O 0C24h,0C2Bh,0C2Dh
;I/O	0F4Bh
;	* I/O 0F4Ah�Ŏw�肳�ꂽ���W�X�^��ǂݏ�������B
;	13h	|�d���R���g���[��
;		|[WRITE]
;		|	80h,06h,00h,00h,80h,07h,00h,01h,80h,01h,00h,00h
;		|	* ���̃o�C�g����������ނƓd����ؒf����B
;		|
;		|	80h,05h,00h,00h
;		|	* ���̃o�C�g���d���N�����ɏ�������ł���B

code segment
	assume cs:code, ds:code

	org 100h

start: ; 80h,06h,00h,00h,80h,07h,00h,01h,80h,01h,00h,00h
	mov dx, 0f4ah
	mov al, 013h
	out dx, al
	
	mov dx, 0f4bh
	mov al, 080h
	out dx, al
	mov al, 06h
	out dx, al
	mov al, 00h
	out dx, al
	out dx, al
	mov al, 080h
	out dx, al
	mov al, 07h
	out dx, al
	mov al, 00h
	out dx, al
	mov al, 01h
	out dx, al
	mov al, 080h
	out dx, al
	mov al, 01h
	out dx, al
	mov al, 00h
	out dx, al
	out dx, al
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start
