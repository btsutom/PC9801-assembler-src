;[[[ SDASM  Ver. 2.03  ]]]
;         ***‚±‚¾‚Ü***   
;
;  SDASM   Ver. 2.03  ***‚±‚¾‚Ü***     2018.07.07
;					  21:52:45
; file name :	A:\DOSBIN\D.COM
; Ä¯Ìß±ÄŞÚ½ :	01E57h:00100h 
;
;	.286p ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	.286
;
; ¾¸ŞÒİÄ : 1E57
;	0100-0103 010D-014B 
;	
; Ì§²ÙÊŞ²Ä” : 000211	(529)  ÊŞ²Ä
; ‰ğÍÊŞ²Ä” : 000043	(67)  ÊŞ²Ä
;
i_0008	equ	00008h
i_0028	equ	00028h
i_0067	equ	00067h
i_0130	equ	00130h
i_0180	equ	00180h
i_0684	equ	00684h
;

data	segment 'DATA'
;
;
data	ends
;

;s_1E57	segment 'CODE'           ;;;;;;;;;;;;;;;;;;;
segment	code
	assume cs:code, ds:code  ;;;;;;;;;;;;;;;;;;;
;
; Ä¯Ìß±ÄŞÚ½ :	00100h 
;
	org	00100h
;
start:
	stc	 
	pushf	 
;	jmp	j_010D    ;;;;;;;;;;;;;;;;;;;;
;
;	org	0010Dh    ;;;;;;;;;;;;;;;;;;;;
;
j_010D:
	push	es 
	push	ds 
	push	di 
	push	si 
	push	dx 
	push	cx 
	push	bx 
	push	ax 
	push	cs 
	cld	 
	mov	ax,cs 
	mov	dx,i_0130 
	add	dx,ax 
	push	dx 
	mov	dx,i_0684 
	push	dx 
	mov	dx,i_0028 
	add	ax,dx 
	mov	bx,ax 
	add	ax,i_0180 
j_012D:
	mov	ds,bx 
	mov	es,ax 
	xor	si,si 
	xor	di,di 
	mov	cx,i_0008 
	repz	 
	movsw	 
	dec	bx 
	dec	ax 
	dec	dx 
	jns	j_012D
;
	mov	es,bx 
	mov	ds,ax 
	mov	si,i_0067 
	lodsw	 
	mov	bp,ax 
	mov	dl,010h 
	retf	 
;
;s_1E57	ends         ;;;;;;;;;;;;;;;;;;;;;;;
	ends
;

	end	start
;