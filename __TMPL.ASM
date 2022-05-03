code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	jmp	lp
lp:
	cmp	cx, '0'
	jz	disp
	mov	dx, offset '@$'
	mov	ah, 09h
	int	21h
	loop	lp
disp:
	push	dx
	mov	dx, offset crlf
	mov	ah, 09h
	int	21h

	mov ax, 4c00h
	int 21h
	
crlf	db	'*',0ah,0dh,'$'
	
code	ends
	end start
; outportb(0x37,0x0b) // SHUT1=1
; outportb(0x37,0x0f) // SHUT0=1
; outportb(0xf0,0x00) // CPU reset
