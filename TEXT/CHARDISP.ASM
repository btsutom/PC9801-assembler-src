;------------------------------------------
;  axに入ってる数値を表示する（したい）
;------------------------------------------

code	segment
	assume ds:code, cs:code
	.486

	org 100h

start:
	mov	ax, 430
lp:
	call	dispn
	call	kaigyou
	cmp	ax, 450
	jz	fin
	inc	ax
	jmp	lp
	
fin:
	mov	ax, 4c00h
	int	21h
	
	include disp.inc
	ends
end	start
	