; X, Y に1文字(CHAR)を表示するプログラム
;
; PC-9821Cx model S2 MEM16MB ODP
; Turbo C++  Version 1.01 Copyright (c) 1990 Borland International
; Turbo Assembler  Version 2.0  Copyright (c) 1988, 1990 Borland International
;

code segment
	assume cs:code, ds:code
	
	org 100h
;
;Ｘ、ＹからテキストＶＲＡＭアドレス(di)を計算する。
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

	mov bx, [CHR]        ; CHAR を表示させる
	mov ax, 0a000h       ; TextVRAM スタートアドレス = 0a000h
	mov es, ax
	mov word ptr es:di, bx
	mov ax, 0a200h       ; TextVRAM 文字属性スタートアドレス= 0a200h
	mov es, ax
	mov bx, word ptr [ATT]     ; 文字属性
	mov word ptr es:di, bx

	mov	ax, 4c00h
	int	21h

CHR dw 120,'$'
X	dw	30,'$'           ; 横４０文字目
Y	dw	15,'$'           ; 縦１５行目　に表示
ATT dw  1011111b,'$'     ; 文字属性

code ends
end start
