// Fills the screen black when key is pressed

@i
M=0

@KBD
D=M
@ON
D;JNE
@OFF
D;JEQ

(ON)
	@8192
	D=A
	@i
	D=D-M
	@0
	D;JLE

	@i
	D=M
	@SCREEN
	A=A+D
	M=-1

	@i
	M=M+1

	@ON
	0;JMP

(OFF)
	@8192
	D=A
	@i
	D=D-M
	@0
	D;JLE

	@i
	D=M
	@SCREEN
	A=A+D
	M=0

	@i
	M=M+1

	@OFF
	0;JMP
