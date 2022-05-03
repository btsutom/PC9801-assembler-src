;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;     cls text screen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


segment	code
	assume ds:code, cs:code
	
	org 100h
start:
	mov ah, 16h
	mov dx, 0h
	
	int 18h
	
	mov ax, 4c00h
	int 21h

code	ends
	end start