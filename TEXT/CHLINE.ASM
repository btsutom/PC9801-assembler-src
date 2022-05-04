code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov cx, 10h          ; 最初は１６ライン分全表示。（必要数－１）
delline:
	mov ax, cx
	out 074h, ax         ; in, out は ax を使う。

	push ax              ; ここいらない　その１
	
waitvsync1:              ; vsync 待ち処理開始
	in  ax, 0a0h
	and ax, 020h
	jnz waitvsync1
waitvsync2:
	in  ax, 0a0h
	and ax, 020h
	jz waitvsync2        ; vsync 待ち処理ここまで

	pop ax               ; ここいらない　その２
	loop delline         ; １ラインずつ減らしていく。
	
	mov ax, 10h          ; 終わったら全ライン表示に戻す。
	out 074h, ax
	mov	ax, 4c00h
	int	21h
	
code ends
end start
