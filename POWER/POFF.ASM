; PC-9821Cx 電源オフコマンド
;I/O	0F4Ah
;名前	リモコン制御[INDEX]
;機能
;	bit 7～0: レジスタ指定
;		* I/O 0F4Bhで読み書きするレジスタ番号を指定する
;関連	I/O 0F4Bh
;		I/O 0C24h,0C2Bh,0C2Dh
;I/O	0F4Bh
;	* I/O 0F4Ahで指定されたレジスタを読み書きする。
;	13h	|電源コントロール
;		|[WRITE]
;		|	80h,06h,00h,00h,80h,07h,00h,01h,80h,01h,00h,00h
;		|	* このバイト列を書き込むと電源を切断する。
;		|
;		|	80h,05h,00h,00h
;		|	* このバイト列を電源起動時に書き込んでいる。

code segment
	assume cs:code, ds:code

	org 100h

start: ; 80h,06h,00h,00h,80h,07h,00h,01h,80h,01h,00h,00h
	mov dx, 0f4ah
	mov al, 013h
	out dx, al
	
	mov dx, 0f4bh
	mov al, 080h
	out dx, al
	mov al, 06h
	out dx, al
	mov al, 00h
	out dx, al
	out dx, al
	mov al, 080h
	out dx, al
	mov al, 07h
	out dx, al
	mov al, 00h
	out dx, al
	mov al, 01h
	out dx, al
	mov al, 080h
	out dx, al
	mov al, 01h
	out dx, al
	mov al, 00h
	out dx, al
	out dx, al
	
	mov	ax, 4c00h
	int	21h
	
code ends
end start
