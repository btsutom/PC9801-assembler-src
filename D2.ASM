;�c�Q�D�b�n�l�@���D�P�P
;���\��ʏ����E�p���b�g�������v���܂��B
;���S�~��`��v���܂��B


;�g���}�N���ł��B


;;�f�k�h�n�ݒ�ł��B
GSET	MACRO				;; �f�k�h�n vector set
	LOCAL	ABC, IDAT, OWL
	MOV	AX, 0F990H		;; A0 - AF vector set
	MOV	DS, AX
	XOR	BX, BX
	MOV	ES, BX
	MOV	SI, 06H
	MOV	DI, 0A0H*4
	MOV	CX, 10H
	CLD
ABC:	MOVSW
	STOSW
	ADD	SI, 0002H
	LOOP	ABC
	MOV	DI, 0CEH*4		;; CE vector set
	MOVSW
	STOSW
	MOV	DI, 0C5H*4		;; stop check vector set
	MOV	AX,OFFSET IDAT
	MOV	ES:[DI], AX
	MOV	ES:[DI+2], CS
	JMP	OWL
IDAT:	IRET
OWL:
	ENDM




;;;;;PROGRAMME;;;;;
;�c�Q�D�b�n�l�@���D�P�P
CODE	SEGMENT
	ASSUME	CS:CODE,DS:CODE,SS:CODE
	ORG	5CH
FCB	DB	36 DUP(?)
DTA	DB	128 DUP(?)
START:


	GSET
	MOV	AX, CS
	MOV	DS, AX


	INT	0A0H			;; �f�k�h�n initialize


	MOV	BX, OFFSET SCR0		;�\��ʂցB
	INT	0A1H


	MOV	BX, OFFSET BK		;�w�i�F�E�p���b�g���[�h�ݒ�ł��B
	INT	0A3H


	MOV	BX, OFFSET GV		;;�w�i�F�ɓh��Ԃ��ł��B
	INT	0A2H


;���S�~�̕`��ł��B
	MOV	CX, 60H
DRAW:	PUSH	CX
	MOV	AL, CL
	MOV	BYTE PTR CIRC+8, AL
	MOV	AX, WORD PTR CIRC+4	;; r set
	ADD	AX, 0004H
	MOV	WORD PTR CIRC+4, AX
	MOV	WORD PTR CIRC+6, AX
	MOV	BX, OFFSET CIRC
	INT	0A8H
	POP	CX
	LOOP	DRAW


	MOV	BX, OFFSET GV		;;�w�i�F�ɓh��Ԃ��ł��B
	INT	0A2H


	MOV	BX, OFFSET SCR1		;;����ʂł��B
	INT	0A1H


	MOV	BX, OFFSET GV		;;�w�i�F�ɓh��Ԃ��ł��B
	INT	0A2H


	MOV	BX, OFFSET SCR0		;�\��ʂցB
	INT	0A1H


	MOV	AH, 4CH			;;�I���ł��B
	INT	21H


;�g���f�[�^�ł��F


CIRC	DW	013FH, 00C7H, 0001H, 0001H, 0000H, 0000H, 0000H
;�~���S�w�C�x�@���a�w�C�x�@�p���b�g,�t���O�@�@
SCR0	DB	03H, 00H, 00H, 0FFH
SCR1	DB	03H, 00H, 01H, 0FFH
;��ʃ��[�h ��ʃX�C�b�` �A�N�e�B�u��� �f�B�X�v���C���
BK	DB	00H, 00H, 00H, 0FFH, 02H
;���g�p�@�w�i�p���b�g�@�{�[�_�[�@�\�ʃp���b�g�@�p���b�g���[�h0 1 2
GV	DW	0000H, 0000H, 027FH, 018FH, 0000H
;����w�C�x�@�E���w�C�x�@�h��Ԃ��p���b�g�E�O�g�p���b�g


	ORG	620H
	DB	0DE0H DUP(?)		;; �f�k�h�n��Ɨ̈�


CODE	ENDS
	END	START

;�@�@�@�@�@�@�@�@�@�@�@�@������@�l�`�f�O�O�V�R�U�@�����������A
;�@�@�@�@�@�@�@�@�@�@�@�@������@�`�t�g�X�U�X�U�R�@�o�b�u�`�m
;�@�@�@�@�@�@�@�@�@�@�@�@������@pcs35508�@�`�r�b�h�h