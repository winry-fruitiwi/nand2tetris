// if the keyboard is pressed, make the first word black.

@KBD
D=M
@ON
D;JNE
@OFF
D;JEQ

(ON)
	@SCREEN
	M=-1
	@END
	0;JMP

(OFF)
	@SCREEN
	M=0
	@END
	0;JMP

(END)
	@0
	0;JMP
