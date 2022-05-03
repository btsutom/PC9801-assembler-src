comment *
        pset.asm for MASM32

path %path%;C:\masm32\bin
ml /c /AT /Fl pset.asm
link16 /t pset;
*
        .model  tiny

        .code
        org     100h            ; .com
;       org     0h              ; IPL
start:
        call    crtini
        push    cs
        pop     ds
mloop:
        mov     dl, 1           ; pset
        mov     dh, 0
        call    paint
        mov     dh, 1
        call    paint

        call    rndot

        mov     dl, 0           ; preset
        mov     dh, 0
        call    paint
        mov     dh, 1
        call    paint

        call    rndot
        jmp     mloop

;       mov     ax, 4c00h
;       int     21h

rndot:
        mov     cx, 50000
rndot1:
        push    cx
@@:
        call    rnd
        cmp     al, 160
        jae     @b
        and     ah, 7fh
        cmp     ah, 100
        jae     @b
        mov     cx, ax
        mov     dl, 1
        call    pset
@@:
        call    rnd
        cmp     al, 160
        jae     @b
        and     ah, 7fh
        cmp     ah, 100
        jae     @b
        mov     cx, ax
        mov     dl, 0
        call    pset

        pop     cx
        loop    rndot1
        ret

rnd:
        mov     ax, seed
        add     ax, ax
        mov     dl, ah
        jnc     @f
        xor     dl, 02h
@@:
        test    dl, 02h
        jnz     @f
        inc     al
@@:
        mov     seed, ax
        ret

seed    dw      0cafeh

paint:
        mov     ch, 0
paint1:
        mov     cl, dh
@@:
        call    pset
        inc     cl
        inc     cl
        cmp     cl, 160
        jb      @b
        inc     ch
        cmp     ch, 100
        jb      paint1
        ret

crtini:
        mov     ax, 0a000h      ; T-VRAM
        mov     es, ax
        mov     al, 01h         ; 簡易グラフモード
        out     68h, al         ; T-GDC ライトモードレジスタ1

        mov     di, 2000h       ; アトリビュート
        mov     al, 0b1h
        mov     cx, 80*25
@@:
        mov     es:[di], al
        inc     di
        inc     di
        loop    @b

        push    es              ; 画面クリア
        pop     ds
        mov     si, 0h
        mov     word ptr ds:[si], 0h
        mov     di, 2h
        mov     cx, 80*25-1
        cld
        rep movsw
        ret

; ch=y cl=x dl=pset/preset
pset:
        mov     al, ch
        and     al, 0fch
        mov     ah, 40
        mul     ah
        mov     di, ax
        mov     al, cl
        and     al, 0feh
        mov     ah, 0
        add     di, ax

        mov     bl, ch
        and     bl, 03h
        mov     bh, 0
        test    cl, 01h
        jnz     @f
        mov     al, pbits0[bx]
        jmp     pset1
@@:
        mov     al, pbits1[bx]
pset1:
        test    dl, 01h
        jz      @f
        or      al, es:[di]     ; pset
        mov     es:[di], al
        ret
@@:
        not     al              ; preset
        and     al, es:[di]
        mov     es:[di], al
        ret

pbits0  db      01h,02h,04h,08h
pbits1  db      10h,20h,40h,80h

        end     start