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
	?debug	S "b:\src\ds.c"
	?debug	C E942BC861F0B623A5C7372635C64732E63
	?debug	C E9200825171B413A5C4C4F43414C5C54435C494E434C5544455C73+
	?debug	C 7464696F2E68
	?debug	C E9200825171B413A5C4C4F43414C5C54435C494E434C5544455C63+
	?debug	C 6F6E696F2E68
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
   ;	main(int argc, char *argv[])
   ;	
	assume	cs:_TEXT
_main	proc	near
	push	bp
	mov	bp,sp
	dec	sp
	dec	sp
	push	si
	push	di
   ;	
   ;	{
   ;		int 	 nl = 0;
   ;	
	xor	di,di
   ;	
   ;		char	 c;
   ;		FILE 	*readfp;
   ;	
   ;		if (argc == 1) exit(1);
   ;	
	cmp	word ptr [bp+4],1
	jne	short @1@74
	mov	ax,1
	push	ax
	call	near ptr _exit
	pop	cx
@1@74:
   ;	
   ;	
   ;		readfp=fopen(argv[1],"r");
   ;	
	mov	ax,offset DGROUP:s@
	push	ax
	mov	bx,word ptr [bp+6]
	push	word ptr [bx+2]
	call	near ptr _fopen
	pop	cx
	pop	cx
	mov	si,ax
   ;	
   ;		if (!readfp) {
   ;	
	or	si,si
	jne	short @1@122
   ;	
   ;			printf("\nCan't open %s\n",argv[1]);
   ;	
	mov	bx,word ptr [bp+6]
	push	word ptr [bx+2]
	mov	ax,offset DGROUP:s@+2
	push	ax
	call	near ptr _printf
	pop	cx
	pop	cx
   ;	
   ;			exit (1);
   ;	
	mov	ax,1
	push	ax
	call	near ptr _exit
	pop	cx
@1@122:
	jmp	short @1@314
@1@146:
   ;	
   ;		}
   ;	
   ;		while ((c = getc(readfp)) != EOF) {
   ;			if ((c == '\n') && (++nl == 20)) {
   ;	
	cmp	byte ptr [bp-1],10
	jne	short @1@242
	inc	di
	mov	ax,di
	cmp	ax,20
	jne	short @1@242
   ;	
   ;				nl = 0;
   ;	
	xor	di,di
   ;	
   ;				printf("\n    === More ===    ");
   ;	
	mov	ax,offset DGROUP:s@+18
	push	ax
	call	near ptr _printf
	pop	cx
	jmp	short @1@218
@1@218:
   ;	
   ;				while (!kbhit()) ;
   ;	
	call	near ptr _kbhit
	or	ax,ax
	je	short @1@218
@1@242:
   ;	
   ;			}
   ;			putchar(c);
   ;	
	mov	ax,word ptr DGROUP:__streams+16
	inc	ax
	mov	word ptr DGROUP:__streams+16,ax
	or	ax,ax
	jge	short @1@290
	mov	bx,word ptr DGROUP:__streams+26
	inc	word ptr DGROUP:__streams+26
	mov	al,byte ptr [bp-1]
	mov	byte ptr [bx],al
	mov	ah,0
	jmp	short @1@314
@1@290:
	mov	ax,offset DGROUP:__streams+16
	push	ax
	mov	al,byte ptr [bp-1]
	push	ax
	call	near ptr __fputc
	pop	cx
	pop	cx
@1@314:
	mov	ax,word ptr [si]
	dec	ax
	mov	word ptr [si],ax
	or	ax,ax
	jl	short @1@362
	mov	bx,word ptr [si+10]
	inc	word ptr [si+10]
	mov	al,byte ptr [bx]
	jmp	short @1@386
@1@362:
	push	si
	call	near ptr __fgetc
	pop	cx
@1@386:
	mov	byte ptr [bp-1],al
	cmp	al,255
	jne	short @1@146
   ;	
   ;		}
   ;	
   ;		printf("\n\n  === End of File === \n");
   ;	
	mov	ax,offset DGROUP:s@+40
	push	ax
	call	near ptr _printf
	pop	cx
	jmp	short @1@434
@1@434:
   ;	
   ;		while (!kbhit()) ;
   ;	
	call	near ptr _kbhit
	or	ax,ax
	je	short @1@434
   ;	
   ;	
   ;		close();
   ;	
	call	near ptr _close
   ;	
   ;		return 0;
   ;	
	xor	ax,ax
	jmp	short @1@482
@1@482:
   ;	
   ;	}
   ;	
	pop	di
	pop	si
	mov	sp,bp
	pop	bp
	ret	
_main	endp
	?debug	C E9
_TEXT	ends
_DATA	segment word public 'DATA'
s@	label	byte
	db	'r'
	db	0
	db	10
	db	'Can'
	db	39
	db	't open %s'
	db	10
	db	0
	db	10
	db	'    === More ===    '
	db	0
	db	10
	db	10
	db	'  === End of File === '
	db	10
	db	0
_DATA	ends
_TEXT	segment byte public 'CODE'
_TEXT	ends
	extrn	_fopen:near
	extrn	_printf:near
	extrn	__fputc:near
	extrn	__fgetc:near
	extrn	_kbhit:near
	public	_main
	extrn	_close:near
	extrn	__setargv__:far
	extrn	__streams:word
	extrn	_exit:near
	end
