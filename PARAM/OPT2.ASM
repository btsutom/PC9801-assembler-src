code segment
	assume cs:code, ds:code, es:code , ss:code
	
	org 100h

start:
	mov [sp-1], '$'
	mov ah, 09h
	mov dx, byte ptr [081h]
	int 021h

	mov	ax, 4c00h
	int	21h
	
code ends
end start