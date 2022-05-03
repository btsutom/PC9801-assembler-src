[45m      [[[ SDASM  Ver. 2.03  ]]]                             ***Ç±ÇæÇ‹***    [m
0000:0000		;
0000:0000		;[46m  SDASM   Ver. 2.03  ***Ç±ÇæÇ‹***  [m    2020.09.27
0000:0000		;					  19:10:29
0000:0000		; file name :	PWOFF.EXE
0000:0000		; ƒØÃﬂ±ƒﬁ⁄Ω :	01E56h:000BEh 
0000:0000		;
0000:0000			.286p
0000:0000		;
			; æ∏ﬁ“›ƒ : 1E56
			;	0010-0076 0078-00AE 00B0-0175 0186-027C 
			;	0297-0382 0384-045B 045D-0462 0464-054F 
			;	0551-0556 0558-0620 0622-06A4 06A6-06A8 
			;	06CB-06F2 06F4-071A 071C-084A 084C-086C 
			;	086E-087A 087C-0889 
			;	
			; Ãß≤Ÿ ﬁ≤ƒêî : 000C67	(3175)   ﬁ≤ƒ
			; âêÕ ﬁ≤ƒêî : 000820	(2080)   ﬁ≤ƒ
0000:0000		;
0000:0000		i_0000	equ	00000h
0000:0000		i_0001	equ	00001h
0000:0000		i_0002	equ	00002h
0000:0000		i_0003	equ	00003h
0000:0000		i_0004	equ	00004h
0000:0000		i_0006	equ	00006h
0000:0000		i_0008	equ	00008h
0000:0000		i_0009	equ	00009h
0000:0000		i_000D	equ	0000Dh
0000:0000		i_0010	equ	00010h
0000:0000		i_0013	equ	00013h
0000:0000		i_0042	equ	00042h
0000:0000		i_0046	equ	00046h
0000:0000		i_004A	equ	0004Ah
0000:0000		i_0054	equ	00054h
0000:0000		i_006C	equ	0006Ch
0000:0000		i_0081	equ	00081h
0000:0000		i_0097	equ	00097h
0000:0000		i_00E6	equ	000E6h
0000:0000		i_00EE	equ	000EEh
0000:0000		i_00FC	equ	000FCh
0000:0000		i_00FF	equ	000FFh
0000:0000		i_0176	equ	00176h
0000:0000		i_01C8	equ	001C8h
0000:0000		i_01CE	equ	001CEh
0000:0000		i_01D0	equ	001D0h
0000:0000		i_03E8	equ	003E8h
0000:0000		i_0400	equ	00400h
0000:0000		i_0F4A	equ	00F4Ah
0000:0000		i_0F4B	equ	00F4Bh
0000:0000		i_1000	equ	01000h
0000:0000		i_1EE0	equ	01EE0h
0000:0000		i_2000	equ	02000h
0000:0000		i_2500	equ	02500h
0000:0000		i_3500	equ	03500h
0000:0000		i_4400	equ	04400h
0000:0000		i_4CFF	equ	04CFFh
0000:0000		i_7FFF	equ	07FFFh
0000:0000		i_8000	equ	08000h
0000:0000		i_D6D6	equ	0D6D6h
0000:0000		i_FFF0	equ	0FFF0h
0000:0000		i_FFFE	equ	0FFFEh
0000:0000		i_FFFF	equ	0FFFFh
0000:0000		;

0000:0000		data	segment 'DATA'
0000:0000		;
0000:0000		b_0000	label byte
0000:0000		w_0002	label word
0000:0000		w_002C	label word
0000:0000		w_004E	label word
0000:0000		w_0050	label word
0000:0000		w_0052	label word
0000:0000		w_006C	label word
0000:0000		w_007A	label word
0000:0000		w_007C	label word
0000:0000		w_008E	label word
0000:0000		w_0090	label word
0000:0000		w_00AB	label word
0000:0000		w_00AD	label word
0000:0000		w_00AF	label word
0000:0000		w_00B1	label word
0000:0000		w_00B3	label word
0000:0000		b_00B8	label byte
0000:0000		b_00B9	label byte
0000:0000		w_00BA	label word
0000:0000		w_00BE	label word
0000:0000		w_00C2	label word
0000:0000		w_00C4	label word
0000:0000		w_00C6	label word
0000:0000		w_00C8	label word
0000:0000		w_00CA	label word
0000:0000		w_00CC	label word
0000:0000		w_00CE	label word
0000:0000		w_00D0	label word
0000:0000		w_00DA	label word
0000:0000		w_00DC	label word
0000:0000		w_00DE	label word
0000:0000		w_00E2	label word
0000:0000		w_00E4	label word
0000:0000		;
0000:0000		data	ends
0000:0000		;

1E56:0000		s_1E56	segment 'CODE'
1E56:0000		;
1E56:0000		; ƒØÃﬂ±ƒﬁ⁄Ω :	000BEh 
1E56:0000		;
1E56:0010			org	00010h
1E56:0010		;
1E56:0010		c_0010:
1E56:0010 33C0  		xor	ax,ax 
1E56:0012 E85703		call	c_036C 
1E56:0015		;
1E56:0015 B84200		mov	ax,i_0042 
1E56:0018 50    		push	ax 
1E56:0019 E82000		call	c_003C 
1E56:001C		;
1E56:001C 83C402		add	sp,+002h 
1E56:001F 0AC0  		or	al,al 
1E56:0021 7418  		jz	j_003B 
1E56:0023		;
1E56:0023 B84A00		mov	ax,i_004A 
1E56:0026 50    		push	ax 
1E56:0027 E81200		call	c_003C 
1E56:002A		;
1E56:002A 83C402		add	sp,+002h 
1E56:002D 0AC0  		or	al,al 
1E56:002F 740A  		jz	j_003B 
1E56:0031		;
1E56:0031 B84600		mov	ax,i_0046 
1E56:0034 50    		push	ax 
1E56:0035 E80400		call	c_003C 
1E56:0038		;
1E56:0038 83C402		add	sp,+002h 
1E56:003B		j_003B:
1E56:003B C3    		ret	 
1E56:003C		;
1E56:003C		c_003C:
1E56:003C 55    		push	bp 
1E56:003D 8BEC  		mov	bp,sp 
1E56:003F B80800		mov	ax,i_0008 
1E56:0042 E82703		call	c_036C 
1E56:0045		;
1E56:0045 2AC0  		sub	al,al 
1E56:0047 8846FA		mov	[bp-006h],al 
1E56:004A 8846FC		mov	[bp-004h],al 
1E56:004D C746F80000    	mov	word ptr [bp-008h],i_0000 
1E56:0052		j_0052:
1E56:0052 E65F  		out	05Fh,al                       ;'_' 
1E56:0054 E65F  		out	05Fh,al                       ;'_' 
1E56:0056 B81000		mov	ax,i_0010 
1E56:0059 50    		push	ax 
1E56:005A B84A0F		mov	ax,i_0F4A 
1E56:005D 50    		push	ax 
1E56:005E E81B08		call	c_087C 
1E56:0061		;
1E56:0061 83C404		add	sp,+004h 
1E56:0064 B84B0F		mov	ax,i_0F4B 
1E56:0067 50    		push	ax 
1E56:0068 E80308		call	c_086E 
1E56:006B		;
1E56:006B 83C402		add	sp,+002h 
1E56:006E A802  		test	al,002h 
1E56:0070 7506  		jnz	j_0078 
1E56:0072		;
1E56:0072 FF46F8		inc	word ptr [bp-008h] 
1E56:0075 EB39  		jmp	j_00B0 
1E56:0077		;
1E56:0078			org	00078h
1E56:0078		;
1E56:0078		j_0078:
1E56:0078 B81300		mov	ax,i_0013 
1E56:007B 50    		push	ax 
1E56:007C B84A0F		mov	ax,i_0F4A 
1E56:007F 50    		push	ax 
1E56:0080 E8F907		call	c_087C 
1E56:0083		;
1E56:0083 83C404		add	sp,+004h 
1E56:0086 8B5E04		mov	bx,[bp+004h] 
1E56:0089 8A07  		mov	al,[bx] 
1E56:008B 2AE4  		sub	ah,ah 
1E56:008D 50    		push	ax 
1E56:008E B84B0F		mov	ax,i_0F4B 
1E56:0091 50    		push	ax 
1E56:0092 E8E707		call	c_087C 
1E56:0095		;
1E56:0095 83C404		add	sp,+004h 
1E56:0098 C746F80000    	mov	word ptr [bp-008h],i_0000 
1E56:009D FF4604		inc	word ptr [bp+004h] 
1E56:00A0 FE46FA		inc	byte ptr [bp-006h] 
1E56:00A3 807EFA04      	cmp	byte ptr [bp-006h],004h 
1E56:00A7 7207  		jb	j_00B0 
1E56:00A9		;
1E56:00A9 C646FC01      	mov	byte ptr [bp-004h],001h 
1E56:00AD EB08  		jmp	j_00B7 
1E56:00AF		;
1E56:00B0			org	000B0h
1E56:00B0		;
1E56:00B0		j_00B0:
1E56:00B0 817EF8E803    	cmp	word ptr [bp-008h],i_03E8 
1E56:00B5 729B  		jb	j_0052 
1E56:00B7		;
1E56:00B7		j_00B7:
1E56:00B7 8A46FC		mov	al,[bp-004h] 
1E56:00BA 8BE5  		mov	sp,bp 
1E56:00BC 5D    		pop	bp 
1E56:00BD C3    		ret	 
1E56:00BE		;
1E56:00BE		start:
1E56:00BE B430  		mov	ah,030h                       ;'0' 
1E56:00C0 CD21  		int	021h 
1E56:00C2		;
1E56:00C2 3C02  		cmp	al,002h 
1E56:00C4 7305  		jnb	j_00CB 
1E56:00C6		;
1E56:00C6 33C0  		xor	ax,ax 
1E56:00C8 06    		push	es 
1E56:00C9 50    		push	ax 
1E56:00CA CB    		retf	 
1E56:00CB		;
1E56:00CB		j_00CB:
1E56:00CB BFE01E		mov	di,i_1EE0 
1E56:00CE 8B360200      	mov	si,[w_0002] 
1E56:00D2 2BF7  		sub	si,di 
1E56:00D4 81FE0010      	cmp	si,i_1000 
1E56:00D8 7203  		jb	j_00DD 
1E56:00DA		;
1E56:00DA BE0010		mov	si,i_1000 
1E56:00DD		j_00DD:
1E56:00DD FA    		cli	 
1E56:00DE 8ED7  		mov	ss,di 
1E56:00E0 81C4CE01      	add	sp,i_01CE 
1E56:00E4 FB    		sti	 
1E56:00E5 7310  		jnb	j_00F7 
1E56:00E7		;
1E56:00E7 16    		push	ss 
1E56:00E8 1F    		pop	ds 
1E56:00E9 E85A02		call	c_0346 
1E56:00EC		;
1E56:00EC 33C0  		xor	ax,ax 
1E56:00EE 50    		push	ax 
1E56:00EF E85B05		call	c_064D 
1E56:00F2		;
1E56:00F2 B8FF4C		mov	ax,i_4CFF 
1E56:00F5 CD21  		int	021h 
1E56:00F7		;
1E56:00F7		j_00F7:
1E56:00F7 8BC6  		mov	ax,si 
1E56:00F9 B104  		mov	cl,004h 
1E56:00FB D3E0  		shl	ax,cl 
1E56:00FD 48    		dec	ax 
1E56:00FE 36A35200      	mov	ss:[w_0052],ax 
1E56:0102 BB5400		mov	bx,i_0054 
1E56:0105 368C17		mov	ss:[bx],ss 
1E56:0108 83E4FE		and	sp,-002h 
1E56:010B 36896704      	mov	ss:[bx+004h],sp 
1E56:010F B8FEFF		mov	ax,i_FFFE 
1E56:0112 50    		push	ax 
1E56:0113 3689670A      	mov	ss:[bx+00Ah],sp 
1E56:0117 F7D0  		not	ax 
1E56:0119 50    		push	ax 
1E56:011A 36896706      	mov	ss:[bx+006h],sp 
1E56:011E 36896708      	mov	ss:[bx+008h],sp 
1E56:0122 3689264E00    	mov	ss:[w_004E],sp 
1E56:0127 03F7  		add	si,di 
1E56:0129 89360200      	mov	[w_0002],si 
1E56:012D 8CC3  		mov	bx,es 
1E56:012F 2BDE  		sub	bx,si 
1E56:0131 F7DB  		neg	bx 
1E56:0133 B44A  		mov	ah,04Ah                       ;'J' 
1E56:0135 CD21  		int	021h 
1E56:0137		;
1E56:0137 368C1E8E00    	mov	ss:[w_008E],ds 
1E56:013C 16    		push	ss 
1E56:013D 07    		pop	es 
1E56:013E FC    		cld	 
1E56:013F BFC801		mov	di,i_01C8 
1E56:0142 B9D001		mov	cx,i_01D0 
1E56:0145 2BCF  		sub	cx,di 
1E56:0147 33C0  		xor	ax,ax 
1E56:0149 F3    		repz	 
1E56:014A AA    		stosb	 
1E56:014B 16    		push	ss 
1E56:014C 1F    		pop	ds 
1E56:014D 8B0EC800      	mov	cx,[w_00C8] 
1E56:0151 E302  		jcxz	j_0155 
1E56:0153		;
1E56:0153 FFD1  		call	cx 
1E56:0155		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:0155		j_0155:
1E56:0155 E84C04		call	c_05A4 
1E56:0158		;
1E56:0158 E84B02		call	c_03A6 
1E56:015B		;
1E56:015B 33ED  		xor	bp,bp 
1E56:015D E84800		call	c_01A8 
1E56:0160		;
1E56:0160 16    		push	ss 
1E56:0161 1F    		pop	ds 
1E56:0162 FF36AF00      	push	[w_00AF] 
1E56:0166 FF36AD00      	push	[w_00AD] 
1E56:016A FF36AB00      	push	[w_00AB] 
1E56:016E E89FFE		call	c_0010 
1E56:0171		;
1E56:0171 50    		push	ax 
1E56:0172 E80101		call	c_0276 
1E56:0175		;
1E56:0175 C3    		ret	 
1E56:0176		;
1E56:0186			org	00186h
1E56:0186		;
1E56:0186		j_0186:
1E56:0186 50    		push	ax 
1E56:0187 E8BC01		call	c_0346 
1E56:018A		;
1E56:018A E8C004		call	c_064D 
1E56:018D		;
1E56:018D 36813ECA00D6D6	cmp	word ptr ss:[w_00CA],i_D6D6 
1E56:0194 7507  		jnz	j_019D 
1E56:0196		;
1E56:0196 58    		pop	ax 
1E56:0197 50    		push	ax 
1E56:0198 36FF16CE00    	call	ss:[w_00CE] 
1E56:019D		j_019D:
1E56:019D B8FF00		mov	ax,i_00FF 
1E56:01A0 50    		push	ax 
1E56:01A1 FF165000      	call	[w_0050] 
1E56:01A5		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:01A5 E01E  		loopnz	j_01C5 
1E56:01A7		;
1E56:01A7 00B80035      	add	[bx+si+i_3500],bh 
1E56:01AB CD21  		int	021h 
1E56:01AD		;
1E56:01AD 891E7A00      	mov	[w_007A],bx 
1E56:01B1 8C067C00      	mov	[w_007C],es 
1E56:01B5 0E    		push	cs 
1E56:01B6 1F    		pop	ds 
1E56:01B7 B80025		mov	ax,i_2500 
1E56:01BA BA7601		mov	dx,i_0176 
1E56:01BD CD21  		int	021h 
1E56:01BF		;
1E56:01BF 16    		push	ss 
1E56:01C0 1F    		pop	ds 
1E56:01C1 833EDA0000    	cmp	word ptr [w_00DA],+000h 
1E56:01C6 7436  		jz	j_01FE 
1E56:01C8		;
1E56:01C8 8C0EDC00      	mov	[w_00DC],cs 
1E56:01CC 8C0EE400      	mov	[w_00E4],cs 
1E56:01D0 8E068E00      	mov	es,[w_008E] 
1E56:01D4 268B362C00    	mov	si,es:[w_002C] 
1E56:01D9 C506DE00      	lds	ax,[w_00DE] 
1E56:01DD 8CDA  		mov	dx,ds 
1E56:01DF 33DB  		xor	bx,bx 
1E56:01E1 36FF1EDA00    	call	far ss:[w_00DA] 
1E56:01E6 7305  		jnb	j_01ED 
1E56:01E8		;
1E56:01E8 16    		push	ss 
1E56:01E9 1F    		pop	ds 
1E56:01EA E97901		jmp	j_0366 
1E56:01ED		;
1E56:01ED		j_01ED:
1E56:01ED 36C506E200    	lds	ax,ss:[w_00E2] 
1E56:01F2 8CDA  		mov	dx,ds 
1E56:01F4 BB0300		mov	bx,i_0003 
1E56:01F7 36FF1EDA00    	call	far ss:[w_00DA] 
1E56:01FC 16    		push	ss 
1E56:01FD 1F    		pop	ds 
1E56:01FE		j_01FE:
1E56:01FE 8E068E00      	mov	es,[w_008E] 
1E56:0202 268B0E2C00    	mov	cx,es:[w_002C] 
1E56:0207 E33E  		jcxz	j_0247 
1E56:0209		;
1E56:0209 8EC1  		mov	es,cx 
1E56:020B 33FF  		xor	di,di 
1E56:020D		j_020D:
1E56:020D 26803D00      	cmp	byte ptr es:[di],000h 
1E56:0211 7434  		jz	j_0247 
1E56:0213		;
1E56:0213 B90D00		mov	cx,i_000D 
1E56:0216 BE6C00		mov	si,i_006C 
1E56:0219 F3    		repz	 
1E56:021A A6    		cmpsb	 
1E56:021B 740B  		jz	j_0228 
1E56:021D		;
1E56:021D B9FF7F		mov	cx,i_7FFF 
1E56:0220 33C0  		xor	ax,ax 
1E56:0222 F2    		repnz	 
1E56:0223 AE    		scasb	 
1E56:0224 7521  		jnz	j_0247 
1E56:0226		;
1E56:0226 EBE5  		jmp	j_020D 
1E56:0228		;
1E56:0228		j_0228:
1E56:0228 06    		push	es 
1E56:0229 1E    		push	ds 
1E56:022A 07    		pop	es 
1E56:022B 1F    		pop	ds 
1E56:022C 8BF7  		mov	si,di 
1E56:022E BF9700		mov	di,i_0097 
1E56:0231 B104  		mov	cl,004h 
1E56:0233		j_0233:
1E56:0233 AC    		lodsb	 
1E56:0234 2C41  		sub	al,041h                       ;'A' 
1E56:0236 720D  		jb	j_0245 
1E56:0238		;
1E56:0238 D2E0  		shl	al,cl 
1E56:023A 92    		xchg	ax,dx 
1E56:023B AC    		lodsb	 
1E56:023C 2C41  		sub	al,041h                       ;'A' 
1E56:023E 7205  		jb	j_0245 
1E56:0240		;
1E56:0240 0AC2  		or	al,dl 
1E56:0242 AA    		stosb	 
1E56:0243 EBEE  		jmp	j_0233 
1E56:0245		;
1E56:0245		j_0245:
1E56:0245 16    		push	ss 
1E56:0246 1F    		pop	ds 
1E56:0247		j_0247:
1E56:0247 BB0400		mov	bx,i_0004 
1E56:024A		j_024A:
1E56:024A 80A79700BF    	and	byte ptr [bx+i_0097],0BFh 
1E56:024F B80044		mov	ax,i_4400 
1E56:0252 CD21  		int	021h 
1E56:0254		;
1E56:0254 720A  		jb	j_0260 
1E56:0256		;
1E56:0256 F6C280		test	dl,080h 
1E56:0259 7405  		jz	j_0260 
1E56:025B		;
1E56:025B 808F970040    	or	byte ptr [bx+i_0097],040h     ;'@' 
1E56:0260		j_0260:
1E56:0260 4B    		dec	bx 
1E56:0261 79E7  		jns	j_024A 
1E56:0263		;
1E56:0263 BEE600		mov	si,i_00E6 
1E56:0266 BFE600		mov	di,i_00E6 
1E56:0269 E8C700		call	c_0333 
1E56:026C		;
1E56:026C BEE600		mov	si,i_00E6 
1E56:026F BFE600		mov	di,i_00E6 
1E56:0272 E8AF00		call	c_0324 
1E56:0275		;
1E56:0275 C3    		ret	 
1E56:0276		;
1E56:0276		c_0276:
1E56:0276 55    		push	bp 
1E56:0277 8BEC  		mov	bp,sp 
1E56:0279 33C9  		xor	cx,cx 
1E56:027B EB1A  		jmp	j_0297 
1E56:027D		;
1E56:0297			org	00297h
1E56:0297		;
1E56:0297		j_0297:
1E56:0297 51    		push	cx 
1E56:0298 0AC9  		or	cl,cl 
1E56:029A 751E  		jnz	j_02BA 
1E56:029C		;
1E56:029C BEC801		mov	si,i_01C8 
1E56:029F BFC801		mov	di,i_01C8 
1E56:02A2 E87F00		call	c_0324 
1E56:02A5		;
1E56:02A5 BEE600		mov	si,i_00E6 
1E56:02A8 BFE600		mov	di,i_00E6 
1E56:02AB E87600		call	c_0324 
1E56:02AE		;
1E56:02AE 813ECA00D6D6  	cmp	word ptr [w_00CA],i_D6D6 
1E56:02B4 7504  		jnz	j_02BA 
1E56:02B6		;
1E56:02B6 FF16D000      	call	[w_00D0] 
1E56:02BA		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:02BA		j_02BA:
1E56:02BA BEE600		mov	si,i_00E6 
1E56:02BD BFE600		mov	di,i_00E6 
1E56:02C0 E86100		call	c_0324 
1E56:02C3		;
1E56:02C3 BEE600		mov	si,i_00E6 
1E56:02C6 BFE600		mov	di,i_00E6 
1E56:02C9 E86700		call	c_0333 
1E56:02CC		;
1E56:02CC E8B500		call	c_0384 
1E56:02CF		;
1E56:02CF 0BC0  		or	ax,ax 
1E56:02D1 7411  		jz	j_02E4 
1E56:02D3		;
1E56:02D3 58    		pop	ax 
1E56:02D4 0AE4  		or	ah,ah 
1E56:02D6 50    		push	ax 
1E56:02D7 750B  		jnz	j_02E4 
1E56:02D9		;
1E56:02D9 837E0400      	cmp	word ptr [bp+004h],+000h 
1E56:02DD 7505  		jnz	j_02E4 
1E56:02DF		;
1E56:02DF C74604FF00    	mov	word ptr [bp+004h],i_00FF 
1E56:02E4		j_02E4:
1E56:02E4 E81000		call	c_02F7 
1E56:02E7		;
1E56:02E7 58    		pop	ax 
1E56:02E8 0AE4  		or	ah,ah 
1E56:02EA 7507  		jnz	j_02F3 
1E56:02EC		;
1E56:02EC 8B4604		mov	ax,[bp+004h] 
1E56:02EF B44C  		mov	ah,04Ch                       ;'L' 
1E56:02F1 CD21  		int	021h 
1E56:02F3		;
1E56:02F3		j_02F3:
1E56:02F3 5F    		pop	di 
1E56:02F4 5E    		pop	si 
1E56:02F5 5D    		pop	bp 
1E56:02F6 C3    		ret	 
1E56:02F7		;
1E56:02F7		c_02F7:
1E56:02F7 8B0EDC00      	mov	cx,[w_00DC] 
1E56:02FB E307  		jcxz	j_0304 
1E56:02FD		;
1E56:02FD BB0200		mov	bx,i_0002 
1E56:0300 FF1EDA00      	call	far [w_00DA] 
1E56:0304		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:0304		j_0304:
1E56:0304 1E    		push	ds 
1E56:0305 C5167A00      	lds	dx,[w_007A] 
1E56:0309 B80025		mov	ax,i_2500 
1E56:030C CD21  		int	021h 
1E56:030E		;
1E56:030E 1F    		pop	ds 
1E56:030F 803EB80000    	cmp	byte ptr [b_00B8],000h 
1E56:0314 740D  		jz	j_0323 
1E56:0316		;
1E56:0316 1E    		push	ds 
1E56:0317 A0B900		mov	al,[b_00B9] 
1E56:031A C516BA00      	lds	dx,[w_00BA] 
1E56:031E B425  		mov	ah,025h                       ;'%' 
1E56:0320 CD21  		int	021h 
1E56:0322		;
1E56:0322 1F    		pop	ds 
1E56:0323		j_0323:
1E56:0323 C3    		ret	 
1E56:0324		;
1E56:0324		j_0324:
1E56:0324		c_0324:
1E56:0324 3BF7  		cmp	si,di 
1E56:0326 730A  		jnb	j_0332 
1E56:0328		;
1E56:0328 4F    		dec	di 
1E56:0329 4F    		dec	di 
1E56:032A 8B0D  		mov	cx,[di] 
1E56:032C E3F6  		jcxz	j_0324 
1E56:032E		;
1E56:032E FFD1  		call	cx 
1E56:0330		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:0330 EBF2  		jmp	j_0324 
1E56:0332		;
1E56:0332		j_0332:
1E56:0332 C3    		ret	 
1E56:0333		;
1E56:0333		j_0333:
1E56:0333		c_0333:
1E56:0333 3BF7  		cmp	si,di 
1E56:0335 730E  		jnb	j_0345 
1E56:0337		;
1E56:0337 83EF04		sub	di,+004h 
1E56:033A 8B05  		mov	ax,[di] 
1E56:033C 0B4502		or	ax,[di+002h] 
1E56:033F 74F2  		jz	j_0333 
1E56:0341		;
1E56:0341 FF1D  		call	far [di] 
1E56:0343		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:0343 EBEE  		jmp	j_0333 
1E56:0345		;
1E56:0345		j_0345:
1E56:0345 C3    		ret	 
1E56:0346		;
1E56:0346		c_0346:
1E56:0346 55    		push	bp 
1E56:0347 8BEC  		mov	bp,sp 
1E56:0349 B8FC00		mov	ax,i_00FC 
1E56:034C 50    		push	ax 
1E56:034D E8FD02		call	c_064D 
1E56:0350		;
1E56:0350 833EBE0000    	cmp	word ptr [w_00BE],+000h 
1E56:0355 7404  		jz	j_035B 
1E56:0357		;
1E56:0357 FF16BE00      	call	[w_00BE] 
1E56:035B		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:035B		j_035B:
1E56:035B B8FF00		mov	ax,i_00FF 
1E56:035E 50    		push	ax 
1E56:035F E8EB02		call	c_064D 
1E56:0362		;
1E56:0362 8BE5  		mov	sp,bp 
1E56:0364 5D    		pop	bp 
1E56:0365 C3    		ret	 
1E56:0366		;
1E56:0366		j_0366:
1E56:0366 B80200		mov	ax,i_0002 
1E56:0369 E91AFE		jmp	j_0186 
1E56:036C		;
1E56:036C		c_036C:
1E56:036C 59    		pop	cx 
1E56:036D 8BDC  		mov	bx,sp 
1E56:036F 2BD8  		sub	bx,ax 
1E56:0371 720A  		jb	j_037D 
1E56:0373		;
1E56:0373 3B1EC200      	cmp	bx,[w_00C2] 
1E56:0377 7204  		jb	j_037D 
1E56:0379		;
1E56:0379 8BE3  		mov	sp,bx 
1E56:037B FFE1  		jmp	cx 
1E56:037D		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:037D		;
1E56:037D		j_037D:
1E56:037D 51    		push	cx 
1E56:037E 33C0  		xor	ax,ax 
1E56:0380 E903FE		jmp	j_0186 
1E56:0383		;
1E56:0384			org	00384h
1E56:0384		;
1E56:0384		c_0384:
1E56:0384 56    		push	si 
1E56:0385 33F6  		xor	si,si 
1E56:0387 B94200		mov	cx,i_0042 
1E56:038A 32E4  		xor	ah,ah 
1E56:038C FC    		cld	 
1E56:038D		j_038D:
1E56:038D AC    		lodsb	 
1E56:038E 32E0  		xor	ah,al 
1E56:0390 E2FB  		loop	j_038D 
1E56:0392		;
1E56:0392 80F455		xor	ah,055h                       ;'U' 
1E56:0395 740D  		jz	j_03A4 
1E56:0397		;
1E56:0397 E8ACFF		call	c_0346 
1E56:039A		;
1E56:039A B80100		mov	ax,i_0001 
1E56:039D 50    		push	ax 
1E56:039E E8AC02		call	c_064D 
1E56:03A1		;
1E56:03A1 B80100		mov	ax,i_0001 
1E56:03A4		j_03A4:
1E56:03A4 5E    		pop	si 
1E56:03A5 C3    		ret	 
1E56:03A6		;
1E56:03A6		c_03A6:
1E56:03A6 8F06C400      	pop	[w_00C4] 
1E56:03AA B430  		mov	ah,030h                       ;'0' 
1E56:03AC CD21  		int	021h 
1E56:03AE		;
1E56:03AE A39000		mov	[w_0090],ax 
1E56:03B1 BA0100		mov	dx,i_0001 
1E56:03B4 3C02  		cmp	al,002h 
1E56:03B6 7429  		jz	j_03E1 
1E56:03B8		;
1E56:03B8 8E068E00      	mov	es,[w_008E] 
1E56:03BC 268E062C00    	mov	es,es:[w_002C] 
1E56:03C1 8C06B300      	mov	[w_00B3],es 
1E56:03C5 33C0  		xor	ax,ax 
1E56:03C7 99    		cwd	 
1E56:03C8 B90080		mov	cx,i_8000 
1E56:03CB 33FF  		xor	di,di 
1E56:03CD		j_03CD:
1E56:03CD F2    		repnz	 
1E56:03CE AE    		scasb	 
1E56:03CF AE    		scasb	 
1E56:03D0 75FB  		jnz	j_03CD 
1E56:03D2		;
1E56:03D2 47    		inc	di 
1E56:03D3 47    		inc	di 
1E56:03D4 893EB100      	mov	[w_00B1],di 
1E56:03D8 B9FFFF		mov	cx,i_FFFF 
1E56:03DB F2    		repnz	 
1E56:03DC AE    		scasb	 
1E56:03DD F7D1  		not	cx 
1E56:03DF 8BD1  		mov	dx,cx 
1E56:03E1		j_03E1:
1E56:03E1 BF0100		mov	di,i_0001 
1E56:03E4 BE8100		mov	si,i_0081 
1E56:03E7 8E1E8E00      	mov	ds,[w_008E] 
1E56:03EB		j_03EB:
1E56:03EB AC    		lodsb	 
1E56:03EC 3C20  		cmp	al,020h                       ;' ' 
1E56:03EE 74FB  		jz	j_03EB 
1E56:03F0		;
1E56:03F0 3C09  		cmp	al,009h 
1E56:03F2 74F7  		jz	j_03EB 
1E56:03F4		;
1E56:03F4 3C0D  		cmp	al,00Dh 
1E56:03F6 7503  		jnz	j_03FB 
1E56:03F8		;
1E56:03F8 E9A300		jmp	j_049E 
1E56:03FB		;
1E56:03FB		j_03FB:
1E56:03FB 0AC0  		or	al,al 
1E56:03FD 7503  		jnz	j_0402 
1E56:03FF		;
1E56:03FF E99C00		jmp	j_049E 
1E56:0402		;
1E56:0402		j_0402:
1E56:0402 47    		inc	di 
1E56:0403		j_0403:
1E56:0403 4E    		dec	si 
1E56:0404		j_0404:
1E56:0404 AC    		lodsb	 
1E56:0405 3C20  		cmp	al,020h                       ;' ' 
1E56:0407 74E2  		jz	j_03EB 
1E56:0409		;
1E56:0409 3C09  		cmp	al,009h 
1E56:040B 74DE  		jz	j_03EB 
1E56:040D		;
1E56:040D 3C0D  		cmp	al,00Dh 
1E56:040F 7503  		jnz	j_0414 
1E56:0411		;
1E56:0411 E98A00		jmp	j_049E 
1E56:0414		;
1E56:0414		j_0414:
1E56:0414 0AC0  		or	al,al 
1E56:0416 7503  		jnz	j_041B 
1E56:0418		;
1E56:0418 E98300		jmp	j_049E 
1E56:041B		;
1E56:041B		j_041B:
1E56:041B 3C22  		cmp	al,022h                       ;'"' 
1E56:041D 7436  		jz	j_0455 
1E56:041F		;
1E56:041F 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:0421 7415  		jz	j_0438 
1E56:0423		;
1E56:0423 3C80  		cmp	al,080h 
1E56:0425 720E  		jb	j_0435 
1E56:0427		;
1E56:0427 3CA0  		cmp	al,0A0h 
1E56:0429 7208  		jb	j_0433 
1E56:042B		;
1E56:042B 3CE0  		cmp	al,0E0h 
1E56:042D 7206  		jb	j_0435 
1E56:042F		;
1E56:042F 3CFC  		cmp	al,0FCh 
1E56:0431 7702  		ja	j_0435 
1E56:0433		;
1E56:0433		j_0433:
1E56:0433 42    		inc	dx 
1E56:0434 46    		inc	si 
1E56:0435		j_0435:
1E56:0435 42    		inc	dx 
1E56:0436 EBCC  		jmp	j_0404 
1E56:0438		;
1E56:0438		j_0438:
1E56:0438 33C9  		xor	cx,cx 
1E56:043A		j_043A:
1E56:043A 41    		inc	cx 
1E56:043B AC    		lodsb	 
1E56:043C 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:043E 74FA  		jz	j_043A 
1E56:0440		;
1E56:0440 3C22  		cmp	al,022h                       ;'"' 
1E56:0442 7404  		jz	j_0448 
1E56:0444		;
1E56:0444 03D1  		add	dx,cx 
1E56:0446 EBBB  		jmp	j_0403 
1E56:0448		;
1E56:0448		j_0448:
1E56:0448 8BC1  		mov	ax,cx 
1E56:044A D1E9  		shr	cx,1 
1E56:044C 13D1  		adc	dx,cx 
1E56:044E A801  		test	al,001h 
1E56:0450 75B2  		jnz	j_0404 
1E56:0452		;
1E56:0452 EB01  		jmp	j_0455 
1E56:0454		;
1E56:0454		j_0454:
1E56:0454 4E    		dec	si 
1E56:0455		j_0455:
1E56:0455 AC    		lodsb	 
1E56:0456 3C0D  		cmp	al,00Dh 
1E56:0458 7503  		jnz	j_045D 
1E56:045A		;
1E56:045A EB42  		jmp	j_049E 
1E56:045C		;
1E56:045D			org	0045Dh
1E56:045D		;
1E56:045D		j_045D:
1E56:045D 0AC0  		or	al,al 
1E56:045F 7503  		jnz	j_0464 
1E56:0461		;
1E56:0461 EB3B  		jmp	j_049E 
1E56:0463		;
1E56:0464			org	00464h
1E56:0464		;
1E56:0464		j_0464:
1E56:0464 3C22  		cmp	al,022h                       ;'"' 
1E56:0466 749C  		jz	j_0404 
1E56:0468		;
1E56:0468 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:046A 7415  		jz	j_0481 
1E56:046C		;
1E56:046C 3C80  		cmp	al,080h 
1E56:046E 720E  		jb	j_047E 
1E56:0470		;
1E56:0470 3CA0  		cmp	al,0A0h 
1E56:0472 7208  		jb	j_047C 
1E56:0474		;
1E56:0474 3CE0  		cmp	al,0E0h 
1E56:0476 7206  		jb	j_047E 
1E56:0478		;
1E56:0478 3CFC  		cmp	al,0FCh 
1E56:047A 7702  		ja	j_047E 
1E56:047C		;
1E56:047C		j_047C:
1E56:047C 42    		inc	dx 
1E56:047D 46    		inc	si 
1E56:047E		j_047E:
1E56:047E 42    		inc	dx 
1E56:047F EBD4  		jmp	j_0455 
1E56:0481		;
1E56:0481		j_0481:
1E56:0481 33C9  		xor	cx,cx 
1E56:0483		j_0483:
1E56:0483 41    		inc	cx 
1E56:0484 AC    		lodsb	 
1E56:0485 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:0487 74FA  		jz	j_0483 
1E56:0489		;
1E56:0489 3C22  		cmp	al,022h                       ;'"' 
1E56:048B 7404  		jz	j_0491 
1E56:048D		;
1E56:048D 03D1  		add	dx,cx 
1E56:048F EBC3  		jmp	j_0454 
1E56:0491		;
1E56:0491		j_0491:
1E56:0491 8BC1  		mov	ax,cx 
1E56:0493 D1E9  		shr	cx,1 
1E56:0495 13D1  		adc	dx,cx 
1E56:0497 A801  		test	al,001h 
1E56:0499 74BA  		jz	j_0455 
1E56:049B		;
1E56:049B E966FF		jmp	j_0404 
1E56:049E		;
1E56:049E		j_049E:
1E56:049E 16    		push	ss 
1E56:049F 1F    		pop	ds 
1E56:04A0 893EAB00      	mov	[w_00AB],di 
1E56:04A4 03D7  		add	dx,di 
1E56:04A6 47    		inc	di 
1E56:04A7 D1E7  		shl	di,1 
1E56:04A9 03D7  		add	dx,di 
1E56:04AB 42    		inc	dx 
1E56:04AC 80E2FE		and	dl,0FEh 
1E56:04AF 2BE2  		sub	sp,dx 
1E56:04B1 8BC4  		mov	ax,sp 
1E56:04B3 A3AD00		mov	[w_00AD],ax 
1E56:04B6 8BD8  		mov	bx,ax 
1E56:04B8 03FB  		add	di,bx 
1E56:04BA 16    		push	ss 
1E56:04BB 07    		pop	es 
1E56:04BC 36893F		mov	ss:[bx],di 
1E56:04BF 43    		inc	bx 
1E56:04C0 43    		inc	bx 
1E56:04C1 C536B100      	lds	si,[w_00B1] 
1E56:04C5		j_04C5:
1E56:04C5 AC    		lodsb	 
1E56:04C6 AA    		stosb	 
1E56:04C7 0AC0  		or	al,al 
1E56:04C9 75FA  		jnz	j_04C5 
1E56:04CB		;
1E56:04CB 368E1E8E00    	mov	ds,ss:[w_008E] 
1E56:04D0 BE8100		mov	si,i_0081 
1E56:04D3 EB03  		jmp	j_04D8 
1E56:04D5		;
1E56:04D5		j_04D5:
1E56:04D5 33C0  		xor	ax,ax 
1E56:04D7 AA    		stosb	 
1E56:04D8		j_04D8:
1E56:04D8 AC    		lodsb	 
1E56:04D9 3C20  		cmp	al,020h                       ;' ' 
1E56:04DB 74FB  		jz	j_04D8 
1E56:04DD		;
1E56:04DD 3C09  		cmp	al,009h 
1E56:04DF 74F7  		jz	j_04D8 
1E56:04E1		;
1E56:04E1 3C0D  		cmp	al,00Dh 
1E56:04E3 7503  		jnz	j_04E8 
1E56:04E5		;
1E56:04E5 E9B200		jmp	j_059A 
1E56:04E8		;
1E56:04E8		j_04E8:
1E56:04E8 0AC0  		or	al,al 
1E56:04EA 7503  		jnz	j_04EF 
1E56:04EC		;
1E56:04EC E9AB00		jmp	j_059A 
1E56:04EF		;
1E56:04EF		j_04EF:
1E56:04EF 36893F		mov	ss:[bx],di 
1E56:04F2 43    		inc	bx 
1E56:04F3 43    		inc	bx 
1E56:04F4		j_04F4:
1E56:04F4 4E    		dec	si 
1E56:04F5		j_04F5:
1E56:04F5 AC    		lodsb	 
1E56:04F6 3C20  		cmp	al,020h                       ;' ' 
1E56:04F8 74DB  		jz	j_04D5 
1E56:04FA		;
1E56:04FA 3C09  		cmp	al,009h 
1E56:04FC 74D7  		jz	j_04D5 
1E56:04FE		;
1E56:04FE 3C0D  		cmp	al,00Dh 
1E56:0500 7503  		jnz	j_0505 
1E56:0502		;
1E56:0502 E99200		jmp	j_0597 
1E56:0505		;
1E56:0505		j_0505:
1E56:0505 0AC0  		or	al,al 
1E56:0507 7503  		jnz	j_050C 
1E56:0509		;
1E56:0509 E98B00		jmp	j_0597 
1E56:050C		;
1E56:050C		j_050C:
1E56:050C 3C22  		cmp	al,022h                       ;'"' 
1E56:050E 7439  		jz	j_0549 
1E56:0510		;
1E56:0510 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:0512 7415  		jz	j_0529 
1E56:0514		;
1E56:0514 3C80  		cmp	al,080h 
1E56:0516 720E  		jb	j_0526 
1E56:0518		;
1E56:0518 3CA0  		cmp	al,0A0h 
1E56:051A 7208  		jb	j_0524 
1E56:051C		;
1E56:051C 3CE0  		cmp	al,0E0h 
1E56:051E 7206  		jb	j_0526 
1E56:0520		;
1E56:0520 3CFC  		cmp	al,0FCh 
1E56:0522 7702  		ja	j_0526 
1E56:0524		;
1E56:0524		j_0524:
1E56:0524 AA    		stosb	 
1E56:0525 AC    		lodsb	 
1E56:0526		j_0526:
1E56:0526 AA    		stosb	 
1E56:0527 EBCC  		jmp	j_04F5 
1E56:0529		;
1E56:0529		j_0529:
1E56:0529 33C9  		xor	cx,cx 
1E56:052B		j_052B:
1E56:052B 41    		inc	cx 
1E56:052C AC    		lodsb	 
1E56:052D 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:052F 74FA  		jz	j_052B 
1E56:0531		;
1E56:0531 3C22  		cmp	al,022h                       ;'"' 
1E56:0533 7406  		jz	j_053B 
1E56:0535		;
1E56:0535 B05C  		mov	al,05Ch                       ;'\' 
1E56:0537 F3    		repz	 
1E56:0538 AA    		stosb	 
1E56:0539 EBB9  		jmp	j_04F4 
1E56:053B		;
1E56:053B		j_053B:
1E56:053B B05C  		mov	al,05Ch                       ;'\' 
1E56:053D D1E9  		shr	cx,1 
1E56:053F F3    		repz	 
1E56:0540 AA    		stosb	 
1E56:0541 7306  		jnb	j_0549 
1E56:0543		;
1E56:0543 B022  		mov	al,022h                       ;'"' 
1E56:0545 AA    		stosb	 
1E56:0546 EBAD  		jmp	j_04F5 
1E56:0548		;
1E56:0548		j_0548:
1E56:0548 4E    		dec	si 
1E56:0549		j_0549:
1E56:0549 AC    		lodsb	 
1E56:054A 3C0D  		cmp	al,00Dh 
1E56:054C 7503  		jnz	j_0551 
1E56:054E		;
1E56:054E EB47  		jmp	j_0597 
1E56:0550		;
1E56:0551			org	00551h
1E56:0551		;
1E56:0551		j_0551:
1E56:0551 0AC0  		or	al,al 
1E56:0553 7503  		jnz	j_0558 
1E56:0555		;
1E56:0555 EB40  		jmp	j_0597 
1E56:0557		;
1E56:0558			org	00558h
1E56:0558		;
1E56:0558		j_0558:
1E56:0558 3C22  		cmp	al,022h                       ;'"' 
1E56:055A 7499  		jz	j_04F5 
1E56:055C		;
1E56:055C 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:055E 7415  		jz	j_0575 
1E56:0560		;
1E56:0560 3C80  		cmp	al,080h 
1E56:0562 720E  		jb	j_0572 
1E56:0564		;
1E56:0564 3CA0  		cmp	al,0A0h 
1E56:0566 7208  		jb	j_0570 
1E56:0568		;
1E56:0568 3CE0  		cmp	al,0E0h 
1E56:056A 7206  		jb	j_0572 
1E56:056C		;
1E56:056C 3CFC  		cmp	al,0FCh 
1E56:056E 7702  		ja	j_0572 
1E56:0570		;
1E56:0570		j_0570:
1E56:0570 AA    		stosb	 
1E56:0571 AC    		lodsb	 
1E56:0572		j_0572:
1E56:0572 AA    		stosb	 
1E56:0573 EBD4  		jmp	j_0549 
1E56:0575		;
1E56:0575		j_0575:
1E56:0575 33C9  		xor	cx,cx 
1E56:0577		j_0577:
1E56:0577 41    		inc	cx 
1E56:0578 AC    		lodsb	 
1E56:0579 3C5C  		cmp	al,05Ch                       ;'\' 
1E56:057B 74FA  		jz	j_0577 
1E56:057D		;
1E56:057D 3C22  		cmp	al,022h                       ;'"' 
1E56:057F 7406  		jz	j_0587 
1E56:0581		;
1E56:0581 B05C  		mov	al,05Ch                       ;'\' 
1E56:0583 F3    		repz	 
1E56:0584 AA    		stosb	 
1E56:0585 EBC1  		jmp	j_0548 
1E56:0587		;
1E56:0587		j_0587:
1E56:0587 B05C  		mov	al,05Ch                       ;'\' 
1E56:0589 D1E9  		shr	cx,1 
1E56:058B F3    		repz	 
1E56:058C AA    		stosb	 
1E56:058D 7203  		jb	j_0592 
1E56:058F		;
1E56:058F E963FF		jmp	j_04F5 
1E56:0592		;
1E56:0592		j_0592:
1E56:0592 B022  		mov	al,022h                       ;'"' 
1E56:0594 AA    		stosb	 
1E56:0595 EBB2  		jmp	j_0549 
1E56:0597		;
1E56:0597		j_0597:
1E56:0597 33C0  		xor	ax,ax 
1E56:0599 AA    		stosb	 
1E56:059A		j_059A:
1E56:059A 16    		push	ss 
1E56:059B 1F    		pop	ds 
1E56:059C C7070000      	mov	word ptr [bx],i_0000 
1E56:05A0 FF26C400      	jmp	[w_00C4] 
1E56:05A4		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:05A4		;
1E56:05A4		c_05A4:
1E56:05A4 55    		push	bp 
1E56:05A5 8BEC  		mov	bp,sp 
1E56:05A7 1E    		push	ds 
1E56:05A8 8E068E00      	mov	es,[w_008E] 
1E56:05AC 268B1E2C00    	mov	bx,es:[w_002C] 
1E56:05B1 8EC3  		mov	es,bx 
1E56:05B3 33C0  		xor	ax,ax 
1E56:05B5 33F6  		xor	si,si 
1E56:05B7 33FF  		xor	di,di 
1E56:05B9 B9FFFF		mov	cx,i_FFFF 
1E56:05BC 0BDB  		or	bx,bx 
1E56:05BE 740E  		jz	j_05CE 
1E56:05C0		;
1E56:05C0 26803E000000  	cmp	byte ptr es:[b_0000],000h 
1E56:05C6 7406  		jz	j_05CE 
1E56:05C8		;
1E56:05C8		j_05C8:
1E56:05C8 F2    		repnz	 
1E56:05C9 AE    		scasb	 
1E56:05CA 46    		inc	si 
1E56:05CB AE    		scasb	 
1E56:05CC 75FA  		jnz	j_05C8 
1E56:05CE		;
1E56:05CE		j_05CE:
1E56:05CE 8BC7  		mov	ax,di 
1E56:05D0 40    		inc	ax 
1E56:05D1 24FE  		and	al,0FEh 
1E56:05D3 46    		inc	si 
1E56:05D4 8BFE  		mov	di,si 
1E56:05D6 D1E6  		shl	si,1 
1E56:05D8 B90900		mov	cx,i_0009 
1E56:05DB E8A400		call	c_0682 
1E56:05DE		;
1E56:05DE 50    		push	ax 
1E56:05DF 8BC6  		mov	ax,si 
1E56:05E1 E89E00		call	c_0682 
1E56:05E4		;
1E56:05E4 A3AF00		mov	[w_00AF],ax 
1E56:05E7 06    		push	es 
1E56:05E8 1E    		push	ds 
1E56:05E9 07    		pop	es 
1E56:05EA 1F    		pop	ds 
1E56:05EB 8BCF  		mov	cx,di 
1E56:05ED 8BD8  		mov	bx,ax 
1E56:05EF 33F6  		xor	si,si 
1E56:05F1 5F    		pop	di 
1E56:05F2 49    		dec	cx 
1E56:05F3 E326  		jcxz	j_061B 
1E56:05F5		;
1E56:05F5		j_05F5:
1E56:05F5 8B04  		mov	ax,[si] 
1E56:05F7 363B066C00    	cmp	ax,ss:[w_006C] 
1E56:05FC 7510  		jnz	j_060E 
1E56:05FE		;
1E56:05FE 51    		push	cx 
1E56:05FF 56    		push	si 
1E56:0600 57    		push	di 
1E56:0601 BF6C00		mov	di,i_006C 
1E56:0604 B90600		mov	cx,i_0006 
1E56:0607 F3    		repz	 
1E56:0608 A7    		cmpsw	 
1E56:0609 5F    		pop	di 
1E56:060A 5E    		pop	si 
1E56:060B 59    		pop	cx 
1E56:060C 7405  		jz	j_0613 
1E56:060E		;
1E56:060E		j_060E:
1E56:060E 26893F		mov	es:[bx],di 
1E56:0611 43    		inc	bx 
1E56:0612 43    		inc	bx 
1E56:0613		j_0613:
1E56:0613 AC    		lodsb	 
1E56:0614 AA    		stosb	 
1E56:0615 0AC0  		or	al,al 
1E56:0617 75FA  		jnz	j_0613 
1E56:0619		;
1E56:0619 E2DA  		loop	j_05F5 
1E56:061B		;
1E56:061B		j_061B:
1E56:061B 26890F		mov	es:[bx],cx 
1E56:061E 1F    		pop	ds 
1E56:061F 5D    		pop	bp 
1E56:0620 C3    		ret	 
1E56:0621		;
1E56:0622			org	00622h
1E56:0622		;
1E56:0622		c_0622:
1E56:0622 55    		push	bp 
1E56:0623 8BEC  		mov	bp,sp 
1E56:0625 56    		push	si 
1E56:0626 57    		push	di 
1E56:0627 1E    		push	ds 
1E56:0628 07    		pop	es 
1E56:0629 8B5604		mov	dx,[bp+004h] 
1E56:062C BEEE00		mov	si,i_00EE 
1E56:062F		j_062F:
1E56:062F AD    		lodsw	 
1E56:0630 3BC2  		cmp	ax,dx 
1E56:0632 7410  		jz	j_0644 
1E56:0634		;
1E56:0634 40    		inc	ax 
1E56:0635 96    		xchg	ax,si 
1E56:0636 740C  		jz	j_0644 
1E56:0638		;
1E56:0638 97    		xchg	ax,di 
1E56:0639 33C0  		xor	ax,ax 
1E56:063B B9FFFF		mov	cx,i_FFFF 
1E56:063E F2    		repnz	 
1E56:063F AE    		scasb	 
1E56:0640 8BF7  		mov	si,di 
1E56:0642 EBEB  		jmp	j_062F 
1E56:0644		;
1E56:0644		j_0644:
1E56:0644 96    		xchg	ax,si 
1E56:0645 5F    		pop	di 
1E56:0646 5E    		pop	si 
1E56:0647 8BE5  		mov	sp,bp 
1E56:0649 5D    		pop	bp 
1E56:064A C20200		ret	i_0002 
1E56:064D		;
1E56:064D		c_064D:
1E56:064D 55    		push	bp 
1E56:064E 8BEC  		mov	bp,sp 
1E56:0650 57    		push	di 
1E56:0651 FF7604		push	[bp+004h] 
1E56:0654 E8CBFF		call	c_0622 
1E56:0657		;
1E56:0657 0BC0  		or	ax,ax 
1E56:0659 7420  		jz	j_067B 
1E56:065B		;
1E56:065B 92    		xchg	ax,dx 
1E56:065C 8BFA  		mov	di,dx 
1E56:065E 33C0  		xor	ax,ax 
1E56:0660 B9FFFF		mov	cx,i_FFFF 
1E56:0663 F2    		repnz	 
1E56:0664 AE    		scasb	 
1E56:0665 F7D1  		not	cx 
1E56:0667 49    		dec	cx 
1E56:0668 BB0200		mov	bx,i_0002 
1E56:066B 813ECA00D6D6  	cmp	word ptr [w_00CA],i_D6D6 
1E56:0671 7504  		jnz	j_0677 
1E56:0673		;
1E56:0673 FF16CC00      	call	[w_00CC] 
1E56:0677		;	[41mï™äÚêÊâêÕç¢ìÔ[m
1E56:0677		j_0677:
1E56:0677 B440  		mov	ah,040h                       ;'@' 
1E56:0679 CD21  		int	021h 
1E56:067B		;
1E56:067B		j_067B:
1E56:067B 5F    		pop	di 
1E56:067C 8BE5  		mov	sp,bp 
1E56:067E 5D    		pop	bp 
1E56:067F C20200		ret	i_0002 
1E56:0682		;
1E56:0682		c_0682:
1E56:0682 53    		push	bx 
1E56:0683 06    		push	es 
1E56:0684 51    		push	cx 
1E56:0685 B90004		mov	cx,i_0400 
1E56:0688 870EC600      	xchg	cx,[w_00C6] 
1E56:068C 51    		push	cx 
1E56:068D 50    		push	ax 
1E56:068E E81500		call	c_06A6 
1E56:0691		;
1E56:0691 5B    		pop	bx 
1E56:0692 8F06C600      	pop	[w_00C6] 
1E56:0696 59    		pop	cx 
1E56:0697 8CDA  		mov	dx,ds 
1E56:0699 0BC0  		or	ax,ax 
1E56:069B 7403  		jz	j_06A0 
1E56:069D		;
1E56:069D 07    		pop	es 
1E56:069E 5B    		pop	bx 
1E56:069F C3    		ret	 
1E56:06A0		;
1E56:06A0		j_06A0:
1E56:06A0 8BC1  		mov	ax,cx 
1E56:06A2 E9E1FA		jmp	j_0186 
1E56:06A5		;
1E56:06A6			org	006A6h
1E56:06A6		;
1E56:06A6		c_06A6:
1E56:06A6 E92200		jmp	j_06CB 
1E56:06A9		;
1E56:06CB			org	006CBh
1E56:06CB		;
1E56:06CB		j_06CB:
1E56:06CB 55    		push	bp 
1E56:06CC 8BEC  		mov	bp,sp 
1E56:06CE 56    		push	si 
1E56:06CF 57    		push	di 
1E56:06D0 8B4E04		mov	cx,[bp+004h] 
1E56:06D3 83F9E8		cmp	cx,-018h 
1E56:06D6 7712  		ja	j_06EA 
1E56:06D8		;
1E56:06D8 BB5400		mov	bx,i_0054 
1E56:06DB E81600		call	c_06F4 
1E56:06DE		;
1E56:06DE 730F  		jnb	j_06EF 
1E56:06E0		;
1E56:06E0 E88D00		call	c_0770 
1E56:06E3		;
1E56:06E3 7205  		jb	j_06EA 
1E56:06E5		;
1E56:06E5 E80C00		call	c_06F4 
1E56:06E8		;
1E56:06E8 7305  		jnb	j_06EF 
1E56:06EA		;
1E56:06EA		j_06EA:
1E56:06EA 33C0  		xor	ax,ax 
1E56:06EC 99    		cwd	 
1E56:06ED EB00  		jmp	j_06EF 
1E56:06EF		;
1E56:06EF		j_06EF:
1E56:06EF 5F    		pop	di 
1E56:06F0 5E    		pop	si 
1E56:06F1 5D    		pop	bp 
1E56:06F2 C3    		ret	 
1E56:06F3		;
1E56:06F4			org	006F4h
1E56:06F4		;
1E56:06F4		c_06F4:
1E56:06F4 41    		inc	cx 
1E56:06F5 80E1FE		and	cl,0FEh 
1E56:06F8 53    		push	bx 
1E56:06F9 FC    		cld	 
1E56:06FA 8B7708		mov	si,[bx+008h] 
1E56:06FD 8B5F0A		mov	bx,[bx+00Ah] 
1E56:0700 33FF  		xor	di,di 
1E56:0702 EB23  		jmp	j_0727 
1E56:0704		;
1E56:0704		j_0704:
1E56:0704 8BC3  		mov	ax,bx 
1E56:0706 5B    		pop	bx 
1E56:0707 A801  		test	al,001h 
1E56:0709 7542  		jnz	j_074D 
1E56:070B		;
1E56:070B 53    		push	bx 
1E56:070C 8B7706		mov	si,[bx+006h] 
1E56:070F 8B5F08		mov	bx,[bx+008h] 
1E56:0712 3BDE  		cmp	bx,si 
1E56:0714 7436  		jz	j_074C 
1E56:0716		;
1E56:0716 4B    		dec	bx 
1E56:0717 33FF  		xor	di,di 
1E56:0719 EB0C  		jmp	j_0727 
1E56:071B		;
1E56:071C			org	0071Ch
1E56:071C		;
1E56:071C		j_071C:
1E56:071C 8D54FE		lea	dx,[si-002h] 
1E56:071F 3BD3  		cmp	dx,bx 
1E56:0721 73E1  		jnb	j_0704 
1E56:0723		;
1E56:0723 03F0  		add	si,ax 
1E56:0725 7223  		jb	j_074A 
1E56:0727		;
1E56:0727		j_0727:
1E56:0727 AD    		lodsw	 
1E56:0728 A801  		test	al,001h 
1E56:072A 74F0  		jz	j_071C 
1E56:072C		;
1E56:072C 8BFE  		mov	di,si 
1E56:072E		j_072E:
1E56:072E 48    		dec	ax 
1E56:072F 3BC1  		cmp	ax,cx 
1E56:0731 7323  		jnb	j_0756 
1E56:0733		;
1E56:0733 03F0  		add	si,ax 
1E56:0735 7213  		jb	j_074A 
1E56:0737		;
1E56:0737 8BD0  		mov	dx,ax 
1E56:0739 AD    		lodsw	 
1E56:073A A801  		test	al,001h 
1E56:073C 74DE  		jz	j_071C 
1E56:073E		;
1E56:073E 03C2  		add	ax,dx 
1E56:0740 050200		add	ax,i_0002 
1E56:0743 8BF7  		mov	si,di 
1E56:0745 8944FE		mov	[si-002h],ax 
1E56:0748 EBE4  		jmp	j_072E 
1E56:074A		;
1E56:074A		j_074A:
1E56:074A 8BC0  		mov	ax,ax 
1E56:074C		j_074C:
1E56:074C 5B    		pop	bx 
1E56:074D		j_074D:
1E56:074D 8B4706		mov	ax,[bx+006h] 
1E56:0750 894708		mov	[bx+008h],ax 
1E56:0753 F9    		stc	 
1E56:0754 EB19  		jmp	j_076F 
1E56:0756		;
1E56:0756		j_0756:
1E56:0756 5B    		pop	bx 
1E56:0757 894CFE		mov	[si-002h],cx 
1E56:075A 7409  		jz	j_0765 
1E56:075C		;
1E56:075C 03F9  		add	di,cx 
1E56:075E 2BC1  		sub	ax,cx 
1E56:0760 48    		dec	ax 
1E56:0761 8905  		mov	[di],ax 
1E56:0763 2BF9  		sub	di,cx 
1E56:0765		j_0765:
1E56:0765 03F9  		add	di,cx 
1E56:0767 897F08		mov	[bx+008h],di 
1E56:076A 8BC6  		mov	ax,si 
1E56:076C 8CDA  		mov	dx,ds 
1E56:076E F8    		clc	 
1E56:076F		j_076F:
1E56:076F C3    		ret	 
1E56:0770		;
1E56:0770		c_0770:
1E56:0770 51    		push	cx 
1E56:0771 57    		push	di 
1E56:0772 F6470201      	test	byte ptr [bx+002h],001h 
1E56:0776 7463  		jz	j_07DB 
1E56:0778		;
1E56:0778 E8D200		call	c_084D 
1E56:077B		;
1E56:077B 8BFE  		mov	di,si 
1E56:077D 8B04  		mov	ax,[si] 
1E56:077F A801  		test	al,001h 
1E56:0781 7403  		jz	j_0786 
1E56:0783		;
1E56:0783 2BC8  		sub	cx,ax 
1E56:0785 49    		dec	cx 
1E56:0786		j_0786:
1E56:0786 41    		inc	cx 
1E56:0787 41    		inc	cx 
1E56:0788 8B7704		mov	si,[bx+004h] 
1E56:078B 0BF6  		or	si,si 
1E56:078D 744C  		jz	j_07DB 
1E56:078F		;
1E56:078F 03CE  		add	cx,si 
1E56:0791 7309  		jnb	j_079C 
1E56:0793		;
1E56:0793 33C0  		xor	ax,ax 
1E56:0795 BAF0FF		mov	dx,i_FFF0 
1E56:0798 E330  		jcxz	j_07CA 
1E56:079A		;
1E56:079A EB3F  		jmp	j_07DB 
1E56:079C		;
1E56:079C		j_079C:
1E56:079C 16    		push	ss 
1E56:079D 07    		pop	es 
1E56:079E 26A1C600      	mov	ax,es:[w_00C6] 
1E56:07A2 3D0020		cmp	ax,i_2000 
1E56:07A5 7416  		jz	j_07BD 
1E56:07A7		;
1E56:07A7 BA0080		mov	dx,i_8000 
1E56:07AA		j_07AA:
1E56:07AA 3BD0  		cmp	dx,ax 
1E56:07AC 7206  		jb	j_07B4 
1E56:07AE		;
1E56:07AE D1EA  		shr	dx,1 
1E56:07B0 75F8  		jnz	j_07AA 
1E56:07B2		;
1E56:07B2 EB22  		jmp	j_07D6 
1E56:07B4		;
1E56:07B4		j_07B4:
1E56:07B4 83FA08		cmp	dx,+008h 
1E56:07B7 721D  		jb	j_07D6 
1E56:07B9		;
1E56:07B9 D1E2  		shl	dx,1 
1E56:07BB 8BC2  		mov	ax,dx 
1E56:07BD		j_07BD:
1E56:07BD 48    		dec	ax 
1E56:07BE 8BD0  		mov	dx,ax 
1E56:07C0 03C1  		add	ax,cx 
1E56:07C2 7302  		jnb	j_07C6 
1E56:07C4		;
1E56:07C4 33C0  		xor	ax,ax 
1E56:07C6		j_07C6:
1E56:07C6 F7D2  		not	dx 
1E56:07C8 23C2  		and	ax,dx 
1E56:07CA		j_07CA:
1E56:07CA 52    		push	dx 
1E56:07CB E82E00		call	c_07FC 
1E56:07CE		;
1E56:07CE 5A    		pop	dx 
1E56:07CF 730D  		jnb	j_07DE 
1E56:07D1		;
1E56:07D1 83FAF0		cmp	dx,-010h 
1E56:07D4 7405  		jz	j_07DB 
1E56:07D6		;
1E56:07D6		j_07D6:
1E56:07D6 B81000		mov	ax,i_0010 
1E56:07D9 EBE2  		jmp	j_07BD 
1E56:07DB		;
1E56:07DB		j_07DB:
1E56:07DB F9    		stc	 
1E56:07DC EB1B  		jmp	j_07F9 
1E56:07DE		;
1E56:07DE		j_07DE:
1E56:07DE 8BD0  		mov	dx,ax 
1E56:07E0 2B5704		sub	dx,[bx+004h] 
1E56:07E3 894704		mov	[bx+004h],ax 
1E56:07E6 897F08		mov	[bx+008h],di 
1E56:07E9 8B770A		mov	si,[bx+00Ah] 
1E56:07EC 4A    		dec	dx 
1E56:07ED 8914  		mov	[si],dx 
1E56:07EF 42    		inc	dx 
1E56:07F0 03F2  		add	si,dx 
1E56:07F2 C704FEFF      	mov	word ptr [si],i_FFFE 
1E56:07F6 89770A		mov	[bx+00Ah],si 
1E56:07F9		j_07F9:
1E56:07F9 5F    		pop	di 
1E56:07FA 59    		pop	cx 
1E56:07FB C3    		ret	 
1E56:07FC		;
1E56:07FC		c_07FC:
1E56:07FC 8BD0  		mov	dx,ax 
1E56:07FE F6470204      	test	byte ptr [bx+002h],004h 
1E56:0802 740F  		jz	j_0813 
1E56:0804		;
1E56:0804 4A    		dec	dx 
1E56:0805 8B7704		mov	si,[bx+004h] 
1E56:0808 4E    		dec	si 
1E56:0809 3BD6  		cmp	dx,si 
1E56:080B 7205  		jb	j_0812 
1E56:080D		;
1E56:080D 3957FE		cmp	[bx-002h],dx 
1E56:0810 7336  		jnb	j_0848 
1E56:0812		;
1E56:0812		j_0812:
1E56:0812 42    		inc	dx 
1E56:0813		j_0813:
1E56:0813 53    		push	bx 
1E56:0814 51    		push	cx 
1E56:0815 8CDE  		mov	si,ds 
1E56:0817 8EC6  		mov	es,si 
1E56:0819 B104  		mov	cl,004h 
1E56:081B D3E8  		shr	ax,cl 
1E56:081D 7503  		jnz	j_0822 
1E56:081F		;
1E56:081F B80010		mov	ax,i_1000 
1E56:0822		j_0822:
1E56:0822 F6470204      	test	byte ptr [bx+002h],004h 
1E56:0826 740A  		jz	j_0832 
1E56:0828		;
1E56:0828 03C6  		add	ax,si 
1E56:082A 8B1E8E00      	mov	bx,[w_008E] 
1E56:082E 2BC3  		sub	ax,bx 
1E56:0830 8EC3  		mov	es,bx 
1E56:0832		j_0832:
1E56:0832 8BD8  		mov	bx,ax 
1E56:0834 B44A  		mov	ah,04Ah                       ;'J' 
1E56:0836 CD21  		int	021h 
1E56:0838		;
1E56:0838 59    		pop	cx 
1E56:0839 5B    		pop	bx 
1E56:083A 7210  		jb	j_084C 
1E56:083C		;
1E56:083C 8BC2  		mov	ax,dx 
1E56:083E F6470204      	test	byte ptr [bx+002h],004h 
1E56:0842 7404  		jz	j_0848 
1E56:0844		;
1E56:0844 4A    		dec	dx 
1E56:0845 8957FE		mov	[bx-002h],dx 
1E56:0848		j_0848:
1E56:0848 F8    		clc	 
1E56:0849 EB01  		jmp	j_084C 
1E56:084B		;
1E56:084C			org	0084Ch
1E56:084C		;
1E56:084C		j_084C:
1E56:084C C3    		ret	 
1E56:084D		;
1E56:084D		c_084D:
1E56:084D 57    		push	di 
1E56:084E 8B7708		mov	si,[bx+008h] 
1E56:0851 3B770A		cmp	si,[bx+00Ah] 
1E56:0854 7503  		jnz	j_0859 
1E56:0856		;
1E56:0856 8B7706		mov	si,[bx+006h] 
1E56:0859		j_0859:
1E56:0859 AD    		lodsw	 
1E56:085A 3DFEFF		cmp	ax,i_FFFE 
1E56:085D 7408  		jz	j_0867 
1E56:085F		;
1E56:085F 8BFE  		mov	di,si 
1E56:0861 24FE  		and	al,0FEh 
1E56:0863 03F0  		add	si,ax 
1E56:0865 EBF2  		jmp	j_0859 
1E56:0867		;
1E56:0867		j_0867:
1E56:0867 4F    		dec	di 
1E56:0868 4F    		dec	di 
1E56:0869 8BF7  		mov	si,di 
1E56:086B 5F    		pop	di 
1E56:086C C3    		ret	 
1E56:086D		;
1E56:086E			org	0086Eh
1E56:086E		;
1E56:086E		c_086E:
1E56:086E 55    		push	bp 
1E56:086F 8BEC  		mov	bp,sp 
1E56:0871 8B5604		mov	dx,[bp+004h] 
1E56:0874 EC    		in	al,dx 
1E56:0875 32E4  		xor	ah,ah 
1E56:0877 8BE5  		mov	sp,bp 
1E56:0879 5D    		pop	bp 
1E56:087A C3    		ret	 
1E56:087B		;
1E56:087C			org	0087Ch
1E56:087C		;
1E56:087C		c_087C:
1E56:087C 55    		push	bp 
1E56:087D 8BEC  		mov	bp,sp 
1E56:087F 8B5604		mov	dx,[bp+004h] 
1E56:0882 8A4606		mov	al,[bp+006h] 
1E56:0885 EE    		out	dx,al 
1E56:0886 B400  		mov	ah,000h 
1E56:0888 5D    		pop	bp 
1E56:0889 C3    		ret	 
1E56:088A		;
1E56:FFFF		s_1E56	ends
1E56:FFFF		;

1E56:0000			end	start
1E56:0000		;
[m
