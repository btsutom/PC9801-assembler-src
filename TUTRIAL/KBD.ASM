;ksens2.asm
;comment *
;        ksens2.asm for MASM32
;ml /c /AT /Fl ksens2.asm
;link16 /t ksens2;
code	segment
	assume  cs:code, ds:code
;        .model  tiny
;        .code
        org     100h            ; .com
;       org     0h              ; IPL
start:
        mov     ax, 0a000h
        mov     es, ax
mloop:
        mov     ah, 04h
        mov     al, 09h
;		mov		ax, 0409h
        int     18h

        mov     di, 0
        mov     cx, 8
@@:
        shl     ah, 1
        mov     al, 0
        adc     al, '0'
        mov     es:[di], al
        inc     di
        inc     di
        loop    @@
        jmp     mloop
        end     start