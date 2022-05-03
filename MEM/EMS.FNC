;	EMS.asm
;
;			This C-source is to use EMS.
;			This use inline-asm.
;
;					writed by T.Ban-nai 2018
;


code	segment
		assume cs:code, ds:code
		org 100h

CR	equ 0dh
LF	equ	0ah
		
start:
ems:
		mov ah, 0x40;
		int 0x67;
		mov dl, ah;
	
	return r;

int GetPageFlameSeg(void)
{
	int r;
	
	asm mov ah, 0x41;
	asm int 0x67;
	asm mov r, bx;
	
	return r;
}

int GetUnallocPage(void)
{
	int r;
	
	asm mov ah, 0x42;
	asm int 0x67;
	asm mov r, bx;
	
	return r;
}

int GetEmmHandle(int pagecount)
{
	int r;
	
	asm mov ah, 0x43;
	asm mov bx, pagecount;
	asm int 0x67;
	asm mov r, dx;
	
	return r;
}

int HandlepageMapping(int phispage, int theopage, int handle)
{
	int r;
	
	asm mov ah, 0x44;
	asm mov al, phispage;
	asm mov bx, theopage;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, ah;
	
	return r;
}

int PageFree(int handle)
{
	int r;
	
	asm mov ah, 0x45;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, ah;
	
	return r;
}

int GetEmmVersion(void)
{
	int ver;
	
	asm mov ah, 0x46;
	asm int 0x67;
	asm mov ver, al;
	
	return ver;
}

int GetPagemap(int handle)
{
	int r;
	
	asm mov ah, 0x48;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, al;
	
	return r;
}

int GetOpenHandle(int handle)
{
	int r;
	
	asm mov ah, 0x4b;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, bx;
	
	return r;
}

int GetHandlepage(int handle)
{
	int r;
	
	asm mov ah, 0x4c;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, bx;
	
	return r;
}

int GetHandlename(int handle, char *name)
{
	int seg = FP_SEG(name);
	int off = FP_OFF(name);
	int r;

	asm mov es, seg;
	asm mov di, off;
	asm mov dx, handle;
	asm mov ah, 0x53;
	asm mov al, 0x00;
	asm int 0x67;
	asm mov r, bx;

	return r;
}

int SetHandlename(char *name, int handle)
{
/*	segregs.ds = FP_SEG(name);
	inregs.x.si = FP_OFF(name);
	inregs.h.ah = 0x53;
	inregs.h.al = 0x01;
	inregs.x.dx = handle;
	
	int86(0x67, &inregs, &outregs); 
	
	return (outregs.h.ah); */
	
	int dseg, segi, r;

	dseg = FP_SEG(name);
	segi = FP_OFF(name);
	asm mov ds, dseg;
	asm mov si, segi;
	asm mov ah, 0x53;
	asm mov al, 0x01;
	asm mov dx, handle;
	asm int 0x67;
	asm mov r, ah;
	
	return r;
}

int GetHandle(char *name)
{
	segregs.ds = FP_SEG(name);
	inregs.x.si = FP_OFF(name);
	inregs.h.ah = 0x54;
	inregs.h.al = 0x01;
	int86(0x67, &inregs, &outregs);
	
	return (outregs.x.dx);

/*	int dseg, segi, r;

	dseg = FP_SEG(name);
	segi = FP_OFF(name);
	asm mov ds, dseg;
	asm mov si, segi;
	asm mov ah, 0x54;
	asm mov al, 0x01;
	asm int 0x67;
	asm mov r, dx;
	
	return r; */
}

int GetTotalHandle(void)
{
	int r;
	
	asm mov ah, 0x54;
	asm mov al, 0x02;
	asm int 0x67;
	asm mov r, bx;
	
	return r;
}

int GetTotalPage(void)
{
	int r;
	
	asm mov ah, 0x42;
	asm int 0x67;
	asm mov r, dx;
	
	return r;
}

int GetHandleDirInfo(void *iptr)
{
	int seg = FP_SEG(iptr);
	int off = FP_OFF(iptr);
	int r;
	
	asm mov ah, 0x54;
	asm mov al, 0x00;
	asm mov es, seg;
	asm mov di, off;
	asm mov r, al;
	
	return r;
}
		title	db	"EMS information",CR,LF,"$"
code	ends
		end start