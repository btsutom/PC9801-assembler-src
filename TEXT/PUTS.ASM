; X, Y に文字列 SM を属性付きで表示するプログラム
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
	xor bx, bx           ; bx = 0
	
disp:
	mov ax, 0a000h       ; TextVRAM スタートアドレス = 0a000h
	mov es, ax
	mov dl, byte ptr SM[bx]
	mov byte ptr es:di, dl
	mov ax, 0a200h       ; TextVRAM 文字属性スタートアドレス= 0a200h
	mov es, ax
	mov cx, word ptr [ATT]     ; 文字属性
	mov word ptr es:di, cx
	add di, 02h
	inc bx
	cmp SM[bx], '$'
	jnz disp
	
	mov	ax, 4c00h
	int	21h

X	dw	10,'$'             ; 横10文字目
Y	dw	20,'$'             ; 縦20行目　に表示
ATT dw  0101011b,'$'       ; 文字属性
SM  db  'Hello, World.','$' ; 表示文字列

code ends
end start