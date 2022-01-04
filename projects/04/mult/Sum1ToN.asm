// Pseudocode:
// 	 initialize n, i, sum
// 	 LOOP:
// 	   if i>=n, goto stop
// 	   sum += i
// 	   i++
// 	   goto LOOP
// 	   
// 	 STOP:
// 	   move sum to R1
//
//   END:
// 	   infinite loop


@R0
D=M
@n
M=D
@i
M=1
@sum
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D; JGT

	@i
	D=M
	@sum
	M=M+D
	@i
	M=M+1
	@LOOP
	D; JMP

(STOP)
	@sum
	D=M
	@R1
	M=D

(END)
	@END
	0; JMP
