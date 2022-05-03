;-----------------------------
;  print register(short)
;
;  ah <- value
;  ex)  mov ah, 03ch
;       call prnreg
;-----------------------------

prnreg proc
PRNAH:

        PUSH        AX
        PUSH        BX
        PUSH        CX
        PUSH        DX
        PUSH        SI

        PUSH        AX

        SHR        AH,1
        SHR        AH,1
        SHR        AH,1
        SHR        AH,1
        AND        AH,0FH

        CMP        AH,0AH
        JL        PRNAH1
        ADD        AH,07H  ; ascii 'A'-'F'
PRNAH1:
        ADD        AH,30H  ; ascii '0'-'9'
        MOV        AL,AH

	push       ax
	mov        dx, ax
	mov	   ah, 6
	int	   21h
	pop	   ax

        POP        AX
        AND        AH,0FH

        CMP        AH,0AH
        JL        PRNAH2
        ADD        AH,07H  ; ascii 'A'-'F'
PRNAH2:
        ADD        AH,30H  ; ascii '0'-'9'
        MOV        AL,AH

	push       ax
	mov        dx, ax
	mov	   ah, 6
	int	   21h
	pop	   ax

        POP        SI
        POP        DX
        POP        CX
        POP        BX
        POP        AX
endp
