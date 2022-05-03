;sound.asm
;comment *
;        sound.asm for MASM32
;ml /c /AT /Fl sound.asm
;link16 /t sound;
;*
        .model  tiny
        .code
        org     100h            ; .com
;       org     0h              ; IPL
start:
        push    cs
        pop     ds
        mov     ax, 0a000h
        mov     es, ax

        mov     al, 08h         ; 振幅 A
        mov     ah, 0
        call    wrtpsg
        mov     al, 01h         ; トーン・ジェネレータ A
        mov     ah, 01h         ; ftone=01deh 125,000/261.6Hz(C4)
        call    wrtpsg
        mov     al, 00h
        mov     ah, 0deh
        call    wrtpsg
        mov     al, 07h         ; ミキサー
        mov     ah, 0feh
        call    wrtpsg

        mov     bl, 0           ; note off
mloop:
        mov     ah, 04h         ; KSENS2
        mov     al, 05h         ; キーコードグループ番号
        int     18h             ; キーボードBIOS

        test    ah, 08h         ; Cキー
        jz      keyup
keydown:
        cmp     bl, 0
        jnz     disp            ; skip if note on
        mov     al, 08h
        mov     ah, 12
        call    wrtpsg
        mov     bl, 1           ; note on
        jmp     disp
keyup:
        cmp     bl, 0
        jz      disp            ; skip if note off
        mov     al, 08h
        mov     ah, 0
        call    wrtpsg
        mov     bl, 0           ; note off

disp:                           ; 表示
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

; al=addr ah=data
wrtpsg:
        mov     dx, 188h        ; ライトアドレス
        out     dx, al
        mov     dx, 18ah        ; ライトデータ
        mov     al, ah
        out     dx, al
        ret

        end     start
        