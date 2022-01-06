// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// pseudocode:
//
//   R0*R1 = R2 or sum
//   
//   R0 = number to be multiplied
//   R1 = number of times to multiply
//   
//   
//   i = 1
//   sum = 0
//   LOOP:
//     if i >= R1, goto STOP
//     sum += R0
//     i++
//     goto loop
//   
//   STOP:
//     sum ⭢ R2
//   
//   END:
//     infinite loop (NOP slide protection)


@i
M=1       // i=1
@sum
M=0       // sum=0

(LOOP)
  @i
  D=M
  @R1
  D=D-M   // D=i-n
  @STOP
  D;JGT   // if i>=n, goto STOP

  @R0
  D=M
  @sum
  M=M+D   // sum+= R0
  @i
  M=M+1
  @LOOP
  0;JMP   // repeat

(STOP)
  @sum
  D=M
  @R2
  M=D     // RAM[2]=sum

(END)
  @END
  0;JMP   // infinite loop
