// Fills the entire screen black.

@i
M=0

(LOOP)
	@8192
	D=A
	@i
	D=D-M
	@STOP
	D;JLT

	@i
	D=M
	@SCREEN
	A=A+D
	M=-1

	@i
	M=M+1

	@LOOP
	0;JMP

(STOP)
	@STOP
	0;JMP
