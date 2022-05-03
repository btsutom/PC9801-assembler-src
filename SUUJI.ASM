code	segment
	assume ds:code, cs:code
	.486
	org 100h
	
start:
	mov	ax, 8525
	call	dispn
	call	kaigyou
	mov ax, 8525h
	call	dispn
fin:
	mov	ax,4c00h
	int	21h

	include disp.inc

code	ends
end	start
	