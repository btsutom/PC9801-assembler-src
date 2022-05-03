
code segment
	assume cs:code, ds:code
	
	org 100h

start:
	out 0f0h,al
	sbb al,[bx+si]
code ends
end start

