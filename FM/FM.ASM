code	segment
	assume ds:code, cs:code
	
;	org 010h
;envseg	db ?
	org 07fh
cmdlen	db 080h dup(?)
	org 100h

putstr macro str
	push	dx
	push	ax
	mov	dx, offset str
	mov	ah, 09h
	int	21h
	pop	ax
	pop	dx
endm

main:
	mov dx, 080h
	mov di, dx
	mov di, '$'
;	putstr	envseg
	putstr	cmdlen
	cmp	byte ptr cmdlen, 0
	je	no
;	putstr	cmdstr
	jmp	fin
no:	putstr	nostr
fin:
	mov	ax, 4c00h
	int	21h
	
nostr	db	0ah,0dh,'cmdline is empty.$'
code ends
end main