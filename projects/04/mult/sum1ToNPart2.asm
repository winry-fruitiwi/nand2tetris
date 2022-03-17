// This takes an argument in R0 and puts the sum of 1 to R0 in R1.

// Pseudocode:
//   sum = 0
//   i = 0
//   n = R0 or RAM[0]
//   
//   while i < n:
//     i += 1
//     sum += i
//     
//   (STOP)
//     R1 = sum
//   
//   (END)
//     infinite loop


// Code:
@R0
D=M
@n
M=D
@sum
M=0
@i
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JGT

	@i
	D=M

	@sum
	M=M+D

	@i
	M=M+1

	@LOOP
	0;JMP

(STOP)
	@sum
	D=M
	@R1
	M=D

(END)
	@END
	0;JMP
