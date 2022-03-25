// This multiplies the arguments in RAM[1] and RAM[0].

@R0
D=M
@multiplied
M=D
@R1
D=M
@multiplier
M=D

@sum
M=0
@i
M=0

(LOOP)
	@i
	D=M
	@multiplier
	D=D-M
	@STOP
	D;JLT

	@multiplied
	D=M
	@sum
	M=M+D
	@i
	M=M+1

	@LOOP
	0;JLT

(STOP)
	@sum
	D=M
	@R2
	M=D

(END)
	@END
	0;JMP
