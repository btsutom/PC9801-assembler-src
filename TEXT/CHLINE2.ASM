;　１ラインずつ文字を上から表示する。
;　vsync１回分ずつ表示する。

code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov cx, 0h          ; 最初は0ライン表示
	mov bx, 16
incline:
	mov ax, cx
	out 074h, ax         ; in, out は ax を使う。

waitvsync1:              ; vsync 待ち処理開始
	in  ax, 0a0h
	and ax, 020h
	jnz waitvsync1
waitvsync2:
	in  ax, 0a0h
	and ax, 020h
	jz waitvsync2        ; vsync 待ち処理ここまで

	inc cx               ; １ライン増やす
	cmp cx, bx           ; １６ラインになったか？
	jnz incline          ; １６ラインになってないならinclineに戻る
	
	mov ax, bx          ; 終わったら全ライン表示に戻す。
	out 074h, ax
	mov	ax, 4c00h
	int	21h
	
code ends
end start
