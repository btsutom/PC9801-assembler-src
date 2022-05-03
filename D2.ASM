;Ｄ２．ＣＯＭ　ｖ．１１
;裏表画面消去・パレット初期化致します。
;同心円を描画致します。


;使うマクロです。


;;ＧＬＩＯ設定です。
GSET	MACRO				;; ＧＬＩＯ vector set
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
;Ｄ２．ＣＯＭ　ｖ．１１
CODE	SEGMENT
	ASSUME	CS:CODE,DS:CODE,SS:CODE
	ORG	5CH
FCB	DB	36 DUP(?)
DTA	DB	128 DUP(?)
START:


	GSET
	MOV	AX, CS
	MOV	DS, AX


	INT	0A0H			;; ＧＬＩＯ initialize


	MOV	BX, OFFSET SCR0		;表画面へ。
	INT	0A1H


	MOV	BX, OFFSET BK		;背景色・パレットモード設定です。
	INT	0A3H


	MOV	BX, OFFSET GV		;;背景色に塗りつぶしです。
	INT	0A2H


;同心円の描画です。
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


	MOV	BX, OFFSET GV		;;背景色に塗りつぶしです。
	INT	0A2H


	MOV	BX, OFFSET SCR1		;;裏画面です。
	INT	0A1H


	MOV	BX, OFFSET GV		;;背景色に塗りつぶしです。
	INT	0A2H


	MOV	BX, OFFSET SCR0		;表画面へ。
	INT	0A1H


	MOV	AH, 4CH			;;終了です。
	INT	21H


;使うデータです：


CIRC	DW	013FH, 00C7H, 0001H, 0001H, 0000H, 0000H, 0000H
;円中心Ｘ，Ｙ　半径Ｘ，Ｙ　パレット,フラグ　　
SCR0	DB	03H, 00H, 00H, 0FFH
SCR1	DB	03H, 00H, 01H, 0FFH
;画面モード 画面スイッチ アクティブ画面 ディスプレイ画面
BK	DB	00H, 00H, 00H, 0FFH, 02H
;未使用　背景パレット　ボーダー　表面パレット　パレットモード0 1 2
GV	DW	0000H, 0000H, 027FH, 018FH, 0000H
;左上Ｘ，Ｙ　右下Ｘ，Ｙ　塗りつぶしパレット・外枠パレット


	ORG	620H
	DB	0DE0H DUP(?)		;; ＧＬＩＯ作業領域


CODE	ENDS
	END	START

;　　　　　　　　　　　　もぐら　ＭＡＧ００７３６　ｎｉｆｔｙ、
;　　　　　　　　　　　　もぐら　ＡＵＨ９６９６３　ＰＣＶＡＮ
;　　　　　　　　　　　　もぐら　pcs35508　ＡＳＣＩＩ
