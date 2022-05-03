	ifndef	??version
?debug	macro
	endm
$comm	macro	name,dist,size,count
	comm	dist name:BYTE:count*size
	endm
	else
$comm	macro	name,dist,size,count
	comm	dist name[size]:BYTE:count
	endm
	endif
	?debug	S "timer.c"
	?debug	C E9998E3F520774696D65722E63
	?debug	C E9200825171B413A5C4C4F43414C5C54435C494E434C5544455C73+
	?debug	C 7464696F2E68
	?debug	C E9200825171A413A5C4C4F43414C5C54435C494E434C5544455C70+
	?debug	C 6339382E68
_TEXT	segment byte public 'CODE'
_TEXT	ends
DGROUP	group	_DATA,_BSS
	assume	cs:_TEXT,ds:DGROUP
_DATA	segment word public 'DATA'
d@	label	byte
d@w	label	word
_DATA	ends
_BSS	segment word public 'BSS'
b@	label	byte
b@w	label	word
_BSS	ends
_TEXT	segment byte public 'CODE'
   ;	
   ;	void test(void)
   ;	
	assume	cs:_TEXT
_test	proc	near
	push	bp
	mov	bp,sp
   ;	
   ;	{
   ;		t=2;
   ;	
	mov	word ptr DGROUP:_t,2
   ;	
   ;	}
   ;	
	pop	bp
	ret	
_test	endp
   ;	
   ;	void main(void)
   ;	
	assume	cs:_TEXT
_main	proc	near
	push	bp
	mov	bp,sp
   ;	
   ;	{
   ;		t=1;
   ;	
	mov	word ptr DGROUP:_t,1
   ;	
   ;		pc98timer(100, test);
   ;	
	mov	ax,offset _test
	push	ax
	mov	ax,100
	push	ax
	call	near ptr _pc98timer
	pop	cx
	pop	cx
@2@50:
   ;	
   ;		while(1)
   ;			printf("t = %d\n", t);
   ;	
	push	word ptr DGROUP:_t
	mov	ax,offset DGROUP:s@
	push	ax
	call	near ptr _printf
	pop	cx
	pop	cx
	jmp	short @2@50
   ;	
   ;	
   ;	}
   ;	
	pop	bp
	ret	
_main	endp
_TEXT	ends
_BSS	segment word public 'BSS'
_t	label	word
	db	2 dup (?)
	?debug	C E9
_BSS	ends
_DATA	segment word public 'DATA'
s@	label	byte
	db	't = %d'
	db	10
	db	0
_DATA	ends
_TEXT	segment byte public 'CODE'
_TEXT	ends
	extrn	_printf:near
	public	_test
	public	_main
	extrn	_pc98timer:near
	public	_t
	end
