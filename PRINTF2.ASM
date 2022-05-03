	ifndef	??version
$comm	macro	name,dist,size,count
	comm	dist name:BYTE:count*size
	endm
	else
$comm	macro	name,dist,size,count
	comm	dist name[size]:BYTE:count
	endm
	endif
DGROUP	group	_DATA,_BSS
	assume	cs:_TEXT,ds:DGROUP

_BSS	segment word public 'BSS'
b@	label	byte
b@w	label	word
_BSS	ends

_TEXT	segment byte public 'CODE'
   ;	
   ;	void main()
   ;	
	assume	cs:_TEXT
_main	proc	near
	push	bp
	mov	bp,sp
	push	cx
   ;	
   ;	{
   ;		int a=1, b=2;
   ;	
	mov	cl,1
	mov	ch,2
   ;	
   ;		
   ;		printf("A+B=%d",a+b);
   ;	
	mov	bl,cl
	add	bh,ch
	push	bx
	mov	bx,offset DGROUP:s@
	push	bx
	call	near ptr _printf
	pop	bx
	pop	cx
	pop	bp
   ;	
   ;		
   ;		return;
   ;	
	jmp	short @1@50
@1@50:
   ;	
   ;	}
   ;	
	pop	di
	pop	si
	pop	bp
	ret	
_main	endp
_TEXT	ends

_DATA	segment word public 'DATA'
s@	label	byte
	db	'1+2=%d'
	db	0
_DATA	ends
_TEXT	segment byte public 'CODE'
_TEXT	ends
	extrn	_printf:near
	public	_main
	end