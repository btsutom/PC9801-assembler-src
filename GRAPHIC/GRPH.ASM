; draw line
;
code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov	ah, 40h
	int	18h	; グラフィック画面の表示開始

	mov	ah, 42h
	mov	ch, 11000000b
	int	18h	;グラフィック画面モードの設定

	mov byte ptr buf[0], 111b
	mov byte ptr buf[2], 11b
	mov byte ptr buf[3], 0
	mov word ptr buf[8], 50
	mov word ptr buf[0ah], 0
	mov word ptr buf[16h], 630
	mov word ptr buf[18h], 380
	mov byte ptr buf[28h], 1
	mov ax, bp
	mov ds, ax
	mov bx, offset buf
	mov ah, 047h
	mov ch, 1011b
	int 18h

	mov ax, 4c00h
	int 21h

buf db 40 dup (' ')
code	ends
	end start
