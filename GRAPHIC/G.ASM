code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ah, 040h
	int 18h
	
	mov ah, 042h
	mov ch, 11000000b
	int 18h
	
	mov ch, 10110000b
	mov ax, offset dds
	mov ds, ax
	mov bx, offset dbx
	mov ah, 047h
	int 18h
	
;	mov ah, 041h
;	int 18h
	mov	ax, 4c00h
	int	21h
	
dds	db 100, 200, 100, 50, 0, 0, 0, 0,'$'
dbx	db 7, 0, 0, 0,0,0,0,10, 20, 600, 300, 15,0,0,0,0,0,0,2
code ends
end start