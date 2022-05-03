code	segment
	assume ds:code, cs:code
	
	org 100h
	
start:
	mov ax, 0a000h
	mov es, ax
	mov bx, '8'
	mov word ptr es:[2002],bx
	mov ax, 0a200h
	mov es, ax
	mov word ptr es:[2002], 10101111b
	
	mov ax, 4c00h
	int 21h
	
crlf	db	'*',0ah,0dh,'$'
	
code	ends
	end start
; outportb(0x37,0x0b) // SHUT1=1
; outportb(0x37,0x0f) // SHUT0=1
; outportb(0xf0,0x00) // CPU reset
