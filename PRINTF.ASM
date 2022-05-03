code segment
extrn _printf:near
	assume cs:code, ds:code
	
	org 100h
	
start:
	mov ax, offset printfstr
	call	near ptr _printf
	mov	ax, 4c00h
	int	21h

printfstr db '%f',10,13,0
code ends
end start
