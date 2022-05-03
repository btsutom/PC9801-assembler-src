code segment
	assume cs:code, ds:code
	
	org 100h

start:
	mov dx, 0f0h
	mov al, 01ah
	out dx, al
	
code ends
end start