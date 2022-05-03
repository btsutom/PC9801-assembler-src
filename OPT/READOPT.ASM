; オプション表示プログラム
;　staypal.comのソース流用
;   DOS5のOwnerNameに対応（VMAP等で文字化けしない！）
;     (C) 1995 Kan-chan

TAB		equ	09h
CR		equ	0Dh
LF		equ	0Ah
_ESC		equ	1Bh
EOF		equ	1Ah
OptRelease	dw	?
PutStr		macro	str
		mov	dx,offset str
		mov	ah,09h
		int	21h
		endm

code		segment
		assume	cs:code,ds:code
		org	2Ch
envseg		dw	?
		org	80h
cmdlen		db	?
cmdline		db	7fh dup (?)
		org	100h
p_start:	jmp	p_main
		db	_ESC,'*'
MsgCopyright	db	'オプション表示プログラム  readopt.com '
		db	CR,LF,'$',EOF

; Get command line options
GetOpt		proc
		mov	si,offset cmdlen
; Read command length
		lodsb
		cmp	al,0
		je	go_End
; Read first char
go_1:		lodsb			;Read 1 char
; If space or tab, skip the char
		cmp	al,' '
		je	go_1
		cmp	al,TAB
		je	go_1
; If CR, return
		cmp	al,CR
		je	go_End
; If '/' or '-', read next char
		cmp	al,'/'
		je	go_2
		cmp	al,'-'
		je	go_2
; If other char, skip the char
		jmp	short go_1
; Read next char
go_2:		lodsb
; If 'R' or 'r', set flag
		cmp	al,'R'
		je	go_Rel
		cmp	al,'r'
		je	go_Rel
; If '?', set flag
		cmp	al,'?'
		je	go_Help
; If other char, skip the char
		jmp	short go_1
; Set flags
go_Rel:		mov	OptRelease,1
		jmp	short go_1
go_Help:	mov	OptHelp,1
		jmp	short go_1
go_End:		ret
GetOpt		endp


; 常駐パレットの検索 Ret.AX=0/1(Exist)
Search		proc
		mov	ah,52h
		int	21h
		mov	ax,es:[bx-2]

		cld
S_1:		mov	es,ax
		cmp	es:[mcb_owner],0
		je	S_2
		mov	si,offset pal_id
		mov	di,10h
		mov	cx,idlen
		repz	cmpsb
		je	S_Exist
S_2:		add	ax,es:[mcb_size]
		inc	ax
		cmp	es:[mcb_flag],'M'
		je	S_1
		xor	ax,ax
		ret
S_Exist:	inc	ax
		mov	es,ax
		mov	ax,1
		ret
Search		endp


p_main:		mov	ax,cs

		PutStr	MsgCopyright

		call	GetOpt
		cmp	OptHelp,1
		je	Help
; Check
		call	Search
		cmp	ax,1
		je	Exist
		cmp	OptRelease,1
		jne	Stay
		PutStr	MsgNoExist
		jmp	short MainEnd
; Install
Stay:		PutStr	MsgInst
; Show message
		PutStr	MsgExist
		jmp	short MainEnd
; Uninstall driver
Release:	call	Uninstall
		PutStr	MsgUninst
		jmp	short MainEnd
MainEnd:	mov	ax,4C00h
		int	21h

code		ends
		end	p_start
