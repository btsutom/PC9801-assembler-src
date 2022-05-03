code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	
	mov al, 0dh
	out 06ah, al	;g-gdc表示制御開始
	
	mov si, 1
	mov di, 0a8a0h
	mov cx, 300
	rep stosb
	
	mov al, 0ch
	out 06ah, al	;g-gdc表示制御終了
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start