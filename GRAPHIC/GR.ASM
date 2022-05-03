include a:\local\tc\include\user\graphic.inc

code segment
	assume cs:code, ds:code
	
	org 100h
	
start:
	screen 3,0,1,1
	palset 0,2,1,13
	line 10,10,600,380,0,B
	mov	ax, 4c00h
	int	21h
	
code ends
end start