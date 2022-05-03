code	segment
	assume ds:code cs:code
	
	org 100h
	
;crlf	macro
;	mov	ah, 2
;	mov	dx, 0dh ;  CR=0dh, LF=0ah
;	int21h
;	mov	ah, 2
;	mov	dx, 0ah
;	int21h
;	endm

;code	segment
;	assume ds:code cs:code
	
;	org 100h
	
start:
	mov	bx, 0
ll:
	mov	ah, 2
	mov	dx, bx
	add	dx, '0'
	int	21h

;	crlf
	
	mov	bx, dx
	add	bx, 1
	mov	dx, bx
	mov	ah, 2
	add	bx, 1
	int	21h
	
	cmp	bx,0ah
	jz	fin
	jmp	ll
	
fin:
	mov	bx,4c00h
	int	21h
	
ends
	end	start
